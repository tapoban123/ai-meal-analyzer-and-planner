import 'dart:io';

import 'package:ai_meal_analyzer/features/meal_photo_analysis/data/models/meal_details_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';

class MealAnalysisResultViewer extends StatelessWidget {
  final MealDetailsModel mealDetails;
  final XFile? image;

  const MealAnalysisResultViewer({
    super.key,
    required this.mealDetails,
    this.image,
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            image != null
                ? Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12.r),
                        child: Image.file(File(image!.path)),
                      ),
                      15.verticalSpace,
                    ],
                  )
                : SizedBox.shrink(),
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
}
