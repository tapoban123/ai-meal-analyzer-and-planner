import 'package:ai_meal_analyzer/core/local_storage_service/data/datasources/sqlflite_data_source_impl.dart';
import 'package:ai_meal_analyzer/core/local_storage_service/domain/repository/sqflite_repository.dart';

class DeleteAllMealPlansUsecase {
  final SqfliteRepository _sqfliteRepository;

  DeleteAllMealPlansUsecase({required SqfliteRepository sqfliteRepository})
    : _sqfliteRepository = sqfliteRepository;

  Future<void> call() async {
    return _sqfliteRepository.deleteAllRowsFromTable(
      tableName: TableNames.mealPlansTable,
    );
  }
}
