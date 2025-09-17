import 'dart:io';

import 'package:ai_meal_analyzer/core/utils/constants.dart';
import 'package:ai_meal_analyzer/features/meal_photo_analysis/data/models/meal_details_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';

class MealAnalysisResultViewer extends StatelessWidget {
  final MealDetailsModel mealDetails;
  final XFile image;

  const MealAnalysisResultViewer({
    super.key,
    required this.mealDetails,
    required this.image,
  });

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
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.0.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12.r),
                      child: FutureBuilder(
                        future: image.readAsBytes(),
                        builder: (context, asyncSnapshot) {
                          if (asyncSnapshot.hasData) {
                            return Image.memory(
                              asyncSnapshot.data!,
                              height: getScreenHeight(context) * 0.36,
                              fit: BoxFit.cover,
                            );
                          }
                          return SizedBox.shrink();
                        },
                      ),
                    ),
                    15.verticalSpace,
                  ],
                ),
              ),
              Text(
                mealDetails.mealName,
                style: TextStyle(fontSize: 28.sp, fontWeight: FontWeight.bold),
              ),
              Text(mealDetails.description, style: TextStyle(fontSize: 18.sp)),
              20.verticalSpace,
              getItemText("Calories", mealDetails.calories, "kcal"),
              getItemText("Protein", mealDetails.protein, "g"),
              getItemText("Fiber", mealDetails.fiber, "g"),
              getItemText("Fat", mealDetails.fat, "g"),
              getItemText("Carbs", mealDetails.carbs, "g"),
              getItemText("Other Nutrients", mealDetails.otherNutrients, "g"),
              10.verticalSpace,
              Text(
                "Ingredients:",
                style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
              ),
              Wrap(
                spacing: 12,
                children: List.generate(
                  mealDetails.ingredientsList!.length,
                  (index) => Card(
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 7.0.w,
                        vertical: 4.0.w,
                      ),
                      child: Text(mealDetails.ingredientsList![index]),
                    ),
                  ),
                ),
              ),
              20.verticalSpace,
            ],
          ),
        ),
      ),
    );
  }
}
