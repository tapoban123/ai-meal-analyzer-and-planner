import 'dart:developer';

import 'package:ai_meal_analyzer/features/meal_planning_assistant/presentation/blocs/meal_plan_generator_bloc/meal_plan_generator_bloc.dart';
import 'package:ai_meal_analyzer/features/meal_planning_assistant/presentation/blocs/meal_plan_generator_bloc/meal_plan_generator_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fl_chart/fl_chart.dart';

class ViewMealPlansScreen extends StatelessWidget {
  const ViewMealPlansScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Meal Plans"), centerTitle: true),
      body: BlocBuilder<MealPlanGenerationBloc, MealPlanGenerationStates>(
        builder: (context, state) {
          if (state.mealPlanWithDailyNutrition != null) {
            final meals = state.mealPlanWithDailyNutrition!.mealPlans;
            final nutritions =
                state.mealPlanWithDailyNutrition!.totalDailyNutrition;

            return SafeArea(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.w),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Column(
                        children: List.generate(meals.length, (index) {
                          final eachMeal = meals[index];
                          log(eachMeal.toString());

                          return Padding(
                            padding: EdgeInsets.only(bottom: 20.h),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  eachMeal.type,
                                  style: TextStyle(fontSize: 14.sp),
                                ),
                                Text(
                                  eachMeal.name,
                                  style: TextStyle(
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "Calories: ${eachMeal.calories} kcal",
                                  style: TextStyle(fontSize: 20.sp),
                                ),
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
                                        child: Text(
                                          eachMeal.ingredients[index],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 200.h,
                                  child: PieChart(
                                    PieChartData(
                                      sectionsSpace: 4,
                                      sections: List.generate(
                                        eachMeal.macros.values.length,
                                        (index) => PieChartSectionData(
                                          value: eachMeal.macros.values
                                              .toList()[index],
                                          title: eachMeal.macros.keys
                                              .toList()[index],
                                          showTitle: true,
                                          radius: 50,
                                        ),
                                      ),
                                    ),
                                  ),
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
          return SizedBox.shrink();
        },
      ),
    );
  }
}
