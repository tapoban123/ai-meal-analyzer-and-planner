import 'package:ai_meal_analyzer/features/meal_photo_analysis/data/models/meal_details_model.dart';
import 'package:ai_meal_analyzer/features/meal_planning_assistant/data/models/generated_meal_plan_model.dart';

abstract class SqfliteRepository {
  Future<void> insertIntoMealAnalysisTable({required MealDetailsModel meal});

  Future<void> insertIntoMealPlansTable({required GeneratedMealPlanModel meal});

  Future<List<MealDetailsModel>> retrieveAllFromMealAnalysisTable();

  Future<List<GeneratedMealPlanModel>> retrieveAllFromMealPlansTable();

  Future<MealDetailsModel> retrieveSpecificFromMealAnalysisTable({
    required String id,
  });

  Future<GeneratedMealPlanModel> retrieveSpecificFromMealPlansTable({
    required String id,
  });

  Future<void> deleteFromTable({required String tableName, required String id});
}
