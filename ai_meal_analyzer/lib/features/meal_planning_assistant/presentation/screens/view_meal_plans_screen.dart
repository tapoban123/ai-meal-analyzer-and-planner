import 'dart:developer';

import 'package:ai_meal_analyzer/core/utils/constants.dart';
import 'package:ai_meal_analyzer/core/utils/theme.dart';
import 'package:ai_meal_analyzer/features/meal_planning_assistant/presentation/blocs/meal_plan_generator_bloc/meal_plan_generator_bloc.dart';
import 'package:ai_meal_analyzer/features/meal_planning_assistant/presentation/blocs/meal_plan_generator_bloc/meal_plan_generator_states.dart';
import 'package:ai_meal_analyzer/features/meal_planning_assistant/presentation/widgets/chart_indicator.dart';
import 'package:ai_meal_analyzer/features/meal_planning_assistant/presentation/widgets/generated_meal_plans_viewer_widget.dart';
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
            pieChartColors.shuffle();

            return GeneratedMealPlansViewerWidget(meals: meals, nutritions: nutritions);
          }
          return SizedBox.shrink();
        },
      ),
    );
  }
}
