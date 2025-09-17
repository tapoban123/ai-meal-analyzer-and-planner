import 'package:ai_meal_analyzer/core/local_storage_service/domain/repository/sqflite_repository.dart';
import 'package:ai_meal_analyzer/features/meal_planning_assistant/data/models/generated_meal_plan_model.dart';

class InsertIntoMealPlansUsecase {
  final SqfliteRepository _sqfliteRepository;

  InsertIntoMealPlansUsecase({required SqfliteRepository sqfliteRepository})
    : _sqfliteRepository = sqfliteRepository;

  Future<void> call({required GeneratedMealPlanModel meal}) async {
    return _sqfliteRepository.insertIntoMealPlansTable(meal: meal);
  }
}
