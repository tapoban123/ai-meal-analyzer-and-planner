import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated_meal_plan_model.freezed.dart';

part 'generated_meal_plan_model.g.dart';

@freezed
abstract class MealPlanModel with _$MealPlanModel{
  @JsonSerializable()
  const factory MealPlanModel({
    String? id,
    required String type,
    required String name,
    required List<String> ingredients,
    required double calories,
    required Map<String, double> macros,
})=_MealPlanModel;

  factory MealPlanModel.fromJson(Map<String, Object?> json)=> _$MealPlanModelFromJson(json);
}


@freezed
abstract class GeneratedMealPlanModel with _$GeneratedMealPlanModel {
  @JsonSerializable()
  const factory GeneratedMealPlanModel({
    required List<MealPlanModel> mealPlans,
    required Map<String, double> totalDailyNutrition,
  }) = _GeneratedMealPlanModel;

  factory GeneratedMealPlanModel.fromJson(Map<String, Object?> json) =>
      _$GeneratedMealPlanModelFromJson(json);
}
