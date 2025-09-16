import 'package:ai_meal_analyzer/core/local_storage_service/domain/repository/sqflite_repository.dart';

class DeleteFromTableUsecase {
  final SqfliteRepository _sqfliteRepository;

  DeleteFromTableUsecase({required SqfliteRepository sqfliteRepository})
    : _sqfliteRepository = sqfliteRepository;

  Future<void> call({required String tableName, required String id}) async {
    return _sqfliteRepository.deleteFromTable(tableName: tableName, id: id);
  }
}
