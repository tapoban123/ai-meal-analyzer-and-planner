// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'generated_meal_plan_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MealPlanModel _$MealPlanModelFromJson(Map<String, dynamic> json) =>
    _MealPlanModel(
      type: json['type'] as String,
      name: json['name'] as String,
      ingredients: (json['ingredients'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      calories: (json['calories'] as num).toDouble(),
      macros: (json['macros'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, (e as num).toDouble()),
      ),
    );

Map<String, dynamic> _$MealPlanModelToJson(_MealPlanModel instance) =>
    <String, dynamic>{
      'type': instance.type,
      'name': instance.name,
      'ingredients': instance.ingredients,
      'calories': instance.calories,
      'macros': instance.macros,
    };

_GeneratedMealPlanModel _$GeneratedMealPlanModelFromJson(
  Map<String, dynamic> json,
) => _GeneratedMealPlanModel(
  mealPlans: (json['mealPlans'] as List<dynamic>)
      .map((e) => MealPlanModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  totalDailyNutrition: (json['totalDailyNutrition'] as Map<String, dynamic>)
      .map((k, e) => MapEntry(k, (e as num).toDouble())),
);

Map<String, dynamic> _$GeneratedMealPlanModelToJson(
  _GeneratedMealPlanModel instance,
) => <String, dynamic>{
  'mealPlans': instance.mealPlans,
  'totalDailyNutrition': instance.totalDailyNutrition,
};
