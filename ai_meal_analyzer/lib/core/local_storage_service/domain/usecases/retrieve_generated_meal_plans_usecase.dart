import 'package:ai_meal_analyzer/core/local_storage_service/domain/repository/sqflite_repository.dart';
import 'package:ai_meal_analyzer/features/meal_planning_assistant/data/models/generated_meal_plan_model.dart';

class RetrieveGeneratedMealPlansUsecase {
  final SqfliteRepository _sqfliteRepository;

  RetrieveGeneratedMealPlansUsecase({
    required SqfliteRepository sqfliteRepository,
  }) : _sqfliteRepository = sqfliteRepository;

  Future<List<GeneratedMealPlanModel>> call() async {
    return await _sqfliteRepository.retrieveAllFromMealPlansTable();
  }
}
