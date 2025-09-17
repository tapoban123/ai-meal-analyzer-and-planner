abstract class SqfliteDatasource {
  Future<void> createDBAndTables();

  Future<void> insertIntoTable({
    required String tableName,
    required Map<String, Object?> json,
  });

  Future<List<Map<String, Object?>>> retrieveAllFromTable(
      {required String tableName});

  Future<List<Map<String, Object?>>> retrieveSpecificFromTable({
    required String tableName,
    required String id,
  });

  Future<void> deleteFromTable({required String tableName, required String id});

  Future<void> deleteEntireTable({required String tableName});
}
