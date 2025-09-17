import 'package:ai_meal_analyzer/features/meal_photo_analysis/data/models/meal_details_model.dart';
import 'package:ai_meal_analyzer/features/meal_planning_assistant/data/models/generated_meal_plan_model.dart';

sealed class HistoryAndAnalyticsEvents {}

class AddNewMealPlanEvent extends HistoryAndAnalyticsEvents {
  final GeneratedMealPlanModel newMealPlan;

  AddNewMealPlanEvent({required this.newMealPlan});
}

class AddNewMealAnalysisReportEvent extends HistoryAndAnalyticsEvents {
  final MealDetailsModel newMealDetails;

  AddNewMealAnalysisReportEvent({required this.newMealDetails});
}

class FetchMealsDataEvent extends HistoryAndAnalyticsEvents {}

class DeleteMealAnalysisDataEvent extends HistoryAndAnalyticsEvents {
  final String id;

  DeleteMealAnalysisDataEvent({required this.id});
}

class DeleteMealPlanDataEvent extends HistoryAndAnalyticsEvents {
  final String id;

  DeleteMealPlanDataEvent({required this.id});
}
