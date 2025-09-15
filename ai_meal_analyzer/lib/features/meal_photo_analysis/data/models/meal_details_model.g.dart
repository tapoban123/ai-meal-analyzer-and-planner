// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meal_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MealDetailsModel _$MealDetailsModelFromJson(Map<String, dynamic> json) =>
    _MealDetailsModel(
      mealName: json['mealName'] as String,
      description: json['description'] as String,
      calories: (json['calories'] as num).toDouble(),
      protein: (json['protein'] as num).toDouble(),
      carbs: (json['carbs'] as num).toDouble(),
      fat: (json['fat'] as num).toDouble(),
      fiber: (json['fiber'] as num).toDouble(),
      otherNutrients: (json['otherNutrients'] as num).toDouble(),
      ingredientsList: (json['ingredientsList'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$MealDetailsModelToJson(_MealDetailsModel instance) =>
    <String, dynamic>{
      'mealName': instance.mealName,
      'description': instance.description,
      'calories': instance.calories,
      'protein': instance.protein,
      'carbs': instance.carbs,
      'fat': instance.fat,
      'fiber': instance.fiber,
      'otherNutrients': instance.otherNutrients,
      'ingredientsList': instance.ingredientsList,
    };
