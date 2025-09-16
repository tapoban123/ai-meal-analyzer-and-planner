import 'package:ai_meal_analyzer/features/meal_planning_assistant/data/models/generated_meal_plan_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'meal_plan_generator_states.freezed.dart';

enum MealPlanGeneratorStatus { initial, loading, success, error }

@freezed
abstract class MealPlanGenerationStates with _$MealPlanGenerationStates {
  const factory MealPlanGenerationStates({
    @Default(MealPlanGeneratorStatus.initial) MealPlanGeneratorStatus status,
    GeneratedMealPlanModel? mealPlanWithDailyNutrition,
    String? error,
  }) = _MealPlanGeneratorStates;
}
