import 'package:ai_meal_analyzer/core/local_storage_service/domain/repository/sqflite_repository.dart';
import 'package:ai_meal_analyzer/features/meal_photo_analysis/data/models/meal_details_model.dart';

class RetrieveMealAnalysisTableUsecase {
  final SqfliteRepository _sqfliteRepository;

  RetrieveMealAnalysisTableUsecase({required SqfliteRepository sqfliteRepository})
    : _sqfliteRepository = sqfliteRepository;

  Future<List<MealDetailsModel>> call() async {
    return _sqfliteRepository.retrieveAllFromMealAnalysisTable();
  }
}
