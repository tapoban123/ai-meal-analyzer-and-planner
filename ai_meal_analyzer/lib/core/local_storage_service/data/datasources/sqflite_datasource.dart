abstract class SqfliteDatasource {
  Future<void> createDBAndTables();

  Future<void> insertIntoTable({
    required String tableName,
    required Map<String, Object?> json,
  });

  Future<void> retrieveAllFromTable({required String tableName});

  Future<void> retrieveSpecificFromTable({
    required String tableName,
    required String id,
  });

  Future<void> deleteFromTable({required String tableName, required String id});
}
