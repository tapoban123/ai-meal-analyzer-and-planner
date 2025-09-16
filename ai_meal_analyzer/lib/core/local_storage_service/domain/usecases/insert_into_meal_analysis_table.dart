import 'package:ai_meal_analyzer/core/local_storage_service/domain/repository/sqflite_repository.dart';
import 'package:ai_meal_analyzer/features/meal_photo_analysis/data/models/meal_details_model.dart';

class InsertIntoMealAnalysisTableUsecase {
  final SqfliteRepository _sqfliteRepository;

  InsertIntoMealAnalysisTableUsecase({required SqfliteRepository sqfliteRepository})
    : _sqfliteRepository = sqfliteRepository;

  Future<void> call({required MealDetailsModel meal}) async {
    return _sqfliteRepository.insertIntoMealAnalysisTable(meal: meal);
  }
}
