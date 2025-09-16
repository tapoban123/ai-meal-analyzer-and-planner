import 'package:ai_meal_analyzer/features/meal_photo_analysis/data/models/meal_details_model.dart';
import 'package:ai_meal_analyzer/features/meal_planning_assistant/data/models/generated_meal_plan_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'history_and_analytics_states.freezed.dart';

enum HistoryAndAnalyticsStatus { initial, loading, success, error }

@freezed
abstract class HistoryAndAnalyticsStates with _$HistoryAndAnalyticsStates{
  const factory HistoryAndAnalyticsStates({
    @Default(HistoryAndAnalyticsStatus.initial)
    HistoryAndAnalyticsStatus status,
    List<MealDetailsModel>? mealAnalysisData,
    List<GeneratedMealPlanModel>? mealPlansData,
    String? error,
  }) = _HistoryAndAnalyticsStates;
}
