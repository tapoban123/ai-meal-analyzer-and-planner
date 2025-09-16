import 'dart:convert';
import 'dart:developer';

import 'package:ai_meal_analyzer/core/utils/constants.dart';
import 'package:ai_meal_analyzer/features/meal_planning_assistant/data/datasources/ai_meal_planner_datasource.dart';
import 'package:ai_meal_analyzer/features/meal_planning_assistant/data/models/generated_meal_plan_model.dart';
import 'package:ai_meal_analyzer/features/meal_planning_assistant/domain/entities/user_meal_details.dart';
import 'package:ai_meal_analyzer/features/meal_planning_assistant/domain/repositories/ai_meal_planner_generator_repository.dart';

class AiMealPlannerGeneratorRepositoryImpl
    extends AiMealPlannerGeneratorRepository {
  final AiMealPlannerDatasource _aiMealPlannerDatasource;

  AiMealPlannerGeneratorRepositoryImpl({
    required AiMealPlannerDatasource aiMealPlannerDatasource,
  }) : _aiMealPlannerDatasource = aiMealPlannerDatasource;

  @override
  Future<GeneratedMealPlanModel?> generateMealPlan({
    required UserMealDetails mealDetails,
  }) async {
    try {
      final response = await _aiMealPlannerDatasource.generateMealPlan(
        preferences: mealDetails.preferences,
        restrictions: mealDetails.restrictions,
        calories: mealDetails.calories,
        macroGoals: mealDetails.macroGoals,
        mealType: mealDetails.mealType,
      );

      if (response.statusCode == 200) {
        final result = GeneratedMealPlanModel.fromJson(
          geminiResponseFormatter(response.body),
        );
        return result;
      }
      throw Exception(response.body);
    } catch (e) {
      log("[MEAL PLAN GENERATION ERROR] $e");
    }
    return null;
  }
}
