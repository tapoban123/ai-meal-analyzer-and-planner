import 'package:ai_meal_analyzer/features/meal_planning_assistant/data/models/generated_meal_plan_model.dart';
import 'package:ai_meal_analyzer/features/meal_planning_assistant/domain/entities/user_meal_details.dart';
import 'package:ai_meal_analyzer/features/meal_planning_assistant/domain/repositories/ai_meal_planner_generator_repository.dart';

class GenerateMealPlanUsecase {
  final AiMealPlannerGeneratorRepository _aiMealPlannerGeneratorRepository;

  GenerateMealPlanUsecase({
    required AiMealPlannerGeneratorRepository aiMealPlannerGeneratorRepository,
  }) : _aiMealPlannerGeneratorRepository = aiMealPlannerGeneratorRepository;

  Future<GeneratedMealPlanModel?> call({required UserMealDetails mealDetails}) async {
    return await _aiMealPlannerGeneratorRepository.generateMealPlan(
      mealDetails: mealDetails,
    );
  }
}
