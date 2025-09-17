import 'dart:convert';
import 'dart:io';

import 'package:ai_meal_analyzer/core/commons/home_view/presentation/widgets/custom_button.dart';
import 'package:ai_meal_analyzer/core/error_cubit.dart';
import 'package:ai_meal_analyzer/core/utils/constants.dart';
import 'package:ai_meal_analyzer/features/history_and_analytics/presentation/blocs/history_and_analytics_bloc/history_and_analytics_bloc.dart';
import 'package:ai_meal_analyzer/features/history_and_analytics/presentation/blocs/history_and_analytics_bloc/history_and_analytics_events.dart';
import 'package:ai_meal_analyzer/features/meal_photo_analysis/presentation/blocs/ai_img_analyser_bloc/ai_img_analyser_bloc.dart';
import 'package:ai_meal_analyzer/features/meal_photo_analysis/presentation/blocs/ai_img_analyser_bloc/ai_img_analyser_events.dart';
import 'package:ai_meal_analyzer/features/meal_photo_analysis/presentation/blocs/ai_img_analyser_bloc/ai_img_analyser_state.dart';
import 'package:ai_meal_analyzer/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';

class MealPhotoAnalysisScreen extends StatelessWidget {
  const MealPhotoAnalysisScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Image Analyser Screen"), centerTitle: true),
      floatingActionButton:
          context.watch<AiImgAnalyserBloc>().state.image != null
          ? FloatingActionButton(
              onPressed: () {
                showBottomSheet(
                  context: context,
                  builder: (context) => TapRegion(
                    onTapUpOutside: (event) {
                      context.pop();
                    },
                    child: SizedBox(
                      height: 100,
                      child: _ChooseImgSourceWidget(size: 40.w),
                    ),
                  ),
                );
              },
              backgroundColor: Colors.deepOrange,
              child: Icon(Icons.camera_alt_rounded, color: Colors.white),
            )
          : null,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.0.w),
        child: BlocConsumer<AiImgAnalyserBloc, AiImgAnalyserState>(
          listener: (context, state) async {
            if (state.status == AIImgAnalyserStatus.loading) {
              showProgressLoaderDialog(context);
            } else if (state.status == AIImgAnalyserStatus.success) {
              context.pop();
              if (state.mealDetails == null) {
                showMsgDialog(
                  context,
                  heading: error != null
                      ? error!.statusCode.toString()
                      : "An error occurred",
                  message: error != null
                      ? error!.message.toString()
                      : "An error has occurred. Please try again.",
                  onTap: () {
                    context.read<AiImgAnalyserBloc>().add(AnalyseImageEvent());
                    context.pop();
                  },
                );
              } else {
                context.read<HistoryAndAnalyticsBloc>().add(
                  AddNewMealAnalysisReportEvent(
                    newMealDetails: state.mealDetails!.copyWith(
                      image: jsonEncode(await state.image!.readAsBytes()),
                    ),
                  ),
                );
                if (context.mounted) {
                  context.push(RoutePaths.analysisResult);
                }
              }
            }
          },
          builder: (context, state) {
            if (state.image != null) {
              return Center(
                child: Column(
                  spacing: 18.h,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 2),
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12.r),
                        child: Image.file(
                          File(state.image!.path),
                          height: getScreenHeight(context) * 0.36,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    CustomButton(
                      onTap: () {
                        context.read<AiImgAnalyserBloc>().add(
                          AnalyseImageEvent(),
                        );
                      },
                      bgColor: Colors.indigo,
                      buttonText: state.mealDetails == null
                          ? "Analyse"
                          : "Re-Analyse",
                    ),
                    state.mealDetails != null
                        ? CustomButton(
                            onTap: () {
                              context.push(RoutePaths.analysisResult);
                            },
                            bgColor: Colors.purple,
                            buttonText: "View Results",
                          )
                        : SizedBox.shrink(),
                  ],
                ),
              );
            }
            return Center(child: _ChooseImgSourceWidget(size: 100.w));
          },
        ),
      ),
    );
  }
}

class _ChooseImgSourceWidget extends StatelessWidget {
  final double size;

  const _ChooseImgSourceWidget({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        IconButton(
          onPressed: () {
            context.read<AiImgAnalyserBloc>().add(
              CaptureImageEvent(imgSource: ImageSource.gallery),
            );
          },
          style: IconButton.styleFrom(
            minimumSize: Size(size.w + 50, size.w + 50),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.r),
            ),
          ),
          icon: Icon(Icons.upload_rounded, size: size.w),
        ),
        IconButton(
          onPressed: () {
            context.read<AiImgAnalyserBloc>().add(
              CaptureImageEvent(imgSource: ImageSource.camera),
            );
          },
          style: IconButton.styleFrom(
            minimumSize: Size(size.w + 50, size.w + 50),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.r),
            ),
          ),
          icon: Icon(Icons.camera_alt_rounded, size: size.w),
        ),
      ],
    );
  }
}
