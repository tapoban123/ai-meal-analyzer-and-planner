import 'package:ai_meal_analyzer/core/utils/constants.dart';
import 'package:ai_meal_analyzer/core/utils/theme.dart';
import 'package:ai_meal_analyzer/features/meal_planning_assistant/data/models/generated_meal_plan_model.dart';
import 'package:ai_meal_analyzer/features/meal_planning_assistant/presentation/widgets/chart_indicator.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GeneratedMealPlansViewerWidget extends StatelessWidget {
  final List<MealPlanModel> meals;
  final Map<String, double> nutritions;

  const GeneratedMealPlansViewerWidget({
    super.key,
    required this.meals,
    required this.nutritions,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.w),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 520.h,
                child: Stack(
                  children: [
                    Positioned(
                      bottom: 0,
                      child: SizedBox(
                        width: getScreenWidth(context),
                        height: 140.h,
                        child: Wrap(
                          spacing: 20.w,
                          runSpacing: 6.w,
                          children: List.generate(
                            nutritions.length,
                            (index) => ChartIndicator(
                              color: pieChartColors[index],
                              text: nutritions.keys.toList()[index],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 350.h,
                      child: PieChart(
                        PieChartData(
                          sectionsSpace: 3,
                          sections: List.generate(
                            nutritions.length,
                            (index) => PieChartSectionData(
                              value: nutritions.values.toList()[index],
                              radius: 100,
                              color: pieChartColors[index],
                              titleStyle: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 10.h),
                child: Divider(),
              ),
              Column(
                children: List.generate(meals.length, (index) {
                  final eachMeal = meals[index];

                  return Padding(
                    padding: EdgeInsets.only(bottom: 00.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(eachMeal.type, style: TextStyle(fontSize: 14.sp)),
                        Text(
                          eachMeal.name,
                          style: TextStyle(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Card(
                          color: Colors.lightGreenAccent,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 12.w,
                              vertical: 10.w,
                            ),
                            child: RichText(
                              text: TextSpan(
                                text: "${eachMeal.calories} kcal ",
                                style: TextStyle(
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                                children: [
                                  TextSpan(
                                    text: "Calories",
                                    style: TextStyle(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        10.verticalSpace,
                        Text(
                          "Ingredients:",
                          style: TextStyle(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Wrap(
                          spacing: 12,
                          children: List.generate(
                            eachMeal.ingredients.length,
                            (index) => Card(
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 7.0.w,
                                  vertical: 4.0.w,
                                ),
                                child: Text(eachMeal.ingredients[index]),
                              ),
                            ),
                          ),
                        ),
                        14.verticalSpace,
                        Stack(
                          children: [
                            Positioned(
                              bottom: 0,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                spacing: 10.w,
                                children: [
                                  ChartIndicator(
                                    color: CustomColors.fatsColor,
                                    text: "Fats",
                                  ),
                                  ChartIndicator(
                                    color: CustomColors.proteinsColor,
                                    text: "Proteins",
                                  ),
                                  ChartIndicator(
                                    color: CustomColors.carbsColor,
                                    text: "Carbs",
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 200.h,
                              child: PieChart(
                                PieChartData(
                                  sectionsSpace: 4,
                                  sections: List.generate(
                                    eachMeal.macros.values.length,
                                    (index) {
                                      final macro = eachMeal.macros.keys
                                          .toList()[index];
                                      Color? color;

                                      switch (macro) {
                                        case "fats":
                                          color = CustomColors.fatsColor;
                                          break;
                                        case "carbs":
                                          color = CustomColors.carbsColor;
                                          break;
                                        case "protein":
                                          color = CustomColors.proteinsColor;
                                          break;
                                      }
                                      return PieChartSectionData(
                                        badgePositionPercentageOffset: -2,
                                        value: eachMeal.macros.values
                                            .toList()[index],
                                        title:
                                            "${eachMeal.macros.values.toList()[index]} g",
                                        showTitle: true,
                                        radius: 50,
                                        color: color,
                                        titleStyle: TextStyle(
                                          color: Colors.white,
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 10.w),
                          child: Divider(),
                        ),
                      ],
                    ),
                  );
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
