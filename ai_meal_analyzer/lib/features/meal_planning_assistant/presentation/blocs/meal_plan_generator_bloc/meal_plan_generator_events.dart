import 'package:ai_meal_analyzer/features/meal_planning_assistant/domain/entities/user_meal_details.dart';

sealed class MealPlanGeneratorEvents {}

class GenerateMealPlanEvent extends MealPlanGeneratorEvents {
  final UserMealDetails mealDetails;

  GenerateMealPlanEvent({required this.mealDetails});
}
