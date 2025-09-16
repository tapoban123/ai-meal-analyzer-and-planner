import 'dart:io';

import 'package:ai_meal_analyzer/features/meal_photo_analysis/presentation/blocs/ai_img_analyser_bloc/ai_img_analyser_bloc.dart';
import 'package:ai_meal_analyzer/features/meal_photo_analysis/presentation/blocs/ai_img_analyser_bloc/ai_img_analyser_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MealAnalysisResultScreen extends StatelessWidget {
  const MealAnalysisResultScreen({super.key});

  Widget getItemText(String heading, double data, String unit) {
    return Row(
      spacing: 6.w,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          "$data $unit",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.sp),
        ),
        Text(
          heading,
          style: TextStyle(fontWeight: FontWeight.normal, fontSize: 14.sp),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Analysis Result"), centerTitle: true),
      body: BlocBuilder<AiImgAnalyserBloc, AiImgAnalyserState>(
        builder: (context, state) {
          if (state.mealDetails != null) {
            final mealDetails = state.mealDetails!;
            return SafeArea(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.0.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12.r),
                      child: Image.file(File(state.image!.path)),
                    ),
                    15.verticalSpace,
                    Text(
                      mealDetails.mealName,
                      style: TextStyle(
                        fontSize: 28.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      mealDetails.description,
                      style: TextStyle(fontSize: 18.sp),
                    ),
                    20.verticalSpace,
                    getItemText("Calories", mealDetails.calories, "kcal"),
                    getItemText("Protein", mealDetails.protein, "g"),
                    getItemText("Fiber", mealDetails.fiber, "g"),
                    getItemText("Fat", mealDetails.fat, "g"),
                    getItemText("Carbs", mealDetails.carbs, "g"),
                    getItemText(
                      "Other Nutrients",
                      mealDetails.otherNutrients,
                      "g",
                    ),
                    10.verticalSpace,
                    Text(
                      "Ingredients:",
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(left: 12.0.w),
                        child: ListView.builder(
                          itemCount: mealDetails.ingredientsList!.length,
                          padding: EdgeInsets.only(bottom: 8.h),
                          itemBuilder: (context, index) {
                            return Row(
                              spacing: 6.w,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(Icons.circle, size: 8.w),
                                Text(mealDetails.ingredientsList![index]),
                              ],
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }
          return SizedBox.shrink();
        },
      ),
    );
  }
}
