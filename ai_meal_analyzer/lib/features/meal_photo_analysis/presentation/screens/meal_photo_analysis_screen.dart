import 'dart:io';

import 'package:ai_meal_analyzer/core/commons/home_view/presentation/widgets/custom_button.dart';
import 'package:ai_meal_analyzer/core/utils/constants.dart';
import 'package:ai_meal_analyzer/features/meal_photo_analysis/presentation/blocs/ai_img_analyser_bloc/ai_img_analyser_bloc.dart';
import 'package:ai_meal_analyzer/features/meal_photo_analysis/presentation/blocs/ai_img_analyser_bloc/ai_img_analyser_events.dart';
import 'package:ai_meal_analyzer/features/meal_photo_analysis/presentation/blocs/ai_img_analyser_bloc/ai_img_analyser_state.dart';
import 'package:ai_meal_analyzer/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class MealPhotoAnalysisScreen extends StatefulWidget {
  const MealPhotoAnalysisScreen({super.key});

  @override
  State<MealPhotoAnalysisScreen> createState() =>
      _MealPhotoAnalysisScreenState();
}

class _MealPhotoAnalysisScreenState extends State<MealPhotoAnalysisScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Image Analyser Screen"), centerTitle: true),
      floatingActionButton:
          context.watch<AiImgAnalyserBloc>().state.image != null
          ? FloatingActionButton(
              onPressed: () {
                context.read<AiImgAnalyserBloc>().add(CaptureImageEvent());
              },
              backgroundColor: Colors.deepOrange,
              child: Icon(Icons.camera_alt_rounded, color: Colors.white),
            )
          : null,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.0.w),
        child: BlocConsumer<AiImgAnalyserBloc, AiImgAnalyserState>(
          listener: (context, state) {
            if (state.status == AIImgAnalyserStatus.loading) {
              showDialog(
                context: context,
                barrierDismissible: false,
                builder: (context) =>
                    Center(child: CircularProgressIndicator()),
              );
            } else if (state.status == AIImgAnalyserStatus.success) {
              context.pop();
              context.push(RoutePaths.analysisResult);
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
                        child: Image.file(File(state.image!.path)),
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
            return Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                spacing: 20.h,
                children: [
                  Text(
                    "No Image selected.",
                    style: TextStyle(
                      fontSize: 35.sp,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  CustomButton(
                    onTap: () {
                      context.read<AiImgAnalyserBloc>().add(
                        CaptureImageEvent(),
                      );
                    },
                    bgColor: Colors.purpleAccent,
                    buttonText: "Upload Image",
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
