import 'package:ai_meal_analyzer/core/local_storage_service/domain/repository/sqflite_repository.dart';

class RetrieveSpecificFromMealAnalysisTableUsecase {
  final SqfliteRepository _sqfliteRepository;

  RetrieveSpecificFromMealAnalysisTableUsecase({
    required SqfliteRepository sqfliteRepository,
  }) : _sqfliteRepository = sqfliteRepository;
}
