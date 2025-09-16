import 'package:ai_meal_analyzer/features/meal_planning_assistant/data/models/generated_meal_plan_model.dart';
import 'package:ai_meal_analyzer/features/meal_planning_assistant/domain/entities/user_meal_details.dart';

abstract class AiMealPlannerGeneratorRepository {
  Future<GeneratedMealPlanModel?> generateMealPlan({required UserMealDetails mealDetails});
}