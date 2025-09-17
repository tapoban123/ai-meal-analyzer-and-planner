// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'generated_meal_plan_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MealPlanModel _$MealPlanModelFromJson(Map<String, dynamic> json) =>
    _MealPlanModel(
      mealId: json['mealId'] as String?,
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
      'mealId': instance.mealId,
      'type': instance.type,
      'name': instance.name,
      'ingredients': instance.ingredients,
      'calories': instance.calories,
      'macros': instance.macros,
    };

_GeneratedMealPlanModel _$GeneratedMealPlanModelFromJson(
  Map<String, dynamic> json,
) => _GeneratedMealPlanModel(
  id: json['id'] as String?,
  creationDate: json['creationDate'] == null
      ? null
      : DateTime.parse(json['creationDate'] as String),
  mealPlans: (json['mealPlans'] as List<dynamic>)
      .map((e) => MealPlanModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  totalDailyNutrition: (json['totalDailyNutrition'] as Map<String, dynamic>)
      .map((k, e) => MapEntry(k, (e as num).toDouble())),
);

Map<String, dynamic> _$GeneratedMealPlanModelToJson(
  _GeneratedMealPlanModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'creationDate': instance.creationDate?.toIso8601String(),
  'mealPlans': instance.mealPlans,
  'totalDailyNutrition': instance.totalDailyNutrition,
};
