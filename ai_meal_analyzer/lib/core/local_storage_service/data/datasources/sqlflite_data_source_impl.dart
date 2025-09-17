import 'package:ai_meal_analyzer/core/local_storage_service/data/datasources/sqflite_datasource.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class TableNames {
  TableNames._();

  static const mealAnalysisReportsTable = "mealAnalysisReports";
  static const mealPlansTable = "mealPlans";
}

class SqlfliteDataSourceImpl extends SqfliteDatasource {
  late Database _db;

  void _createTablesQueries(Database db) {
    db.execute("""
      CREATE TABLE IF NOT EXISTS ${TableNames.mealAnalysisReportsTable} (
      id TEXT PRIMARY KEY,
      mealName TEXT,
      description TEXT,
      calories DECIMAL(8,2),
      protein DECIMAL(8,2),
      carbs DECIMAL(8,2),
      fat DECIMAL(8,2),
      fiber DECIMAL(8,2),
      otherNutrients DECIMAL(8,2),
      ingredientsList TEXT
      ) 
      """);
    db.execute("""
      CREATE TABLE IF NOT EXISTS ${TableNames.mealPlansTable} (
      id TEXT,
      mealId TEXT PRIMARY KEY,
      type TEXT,
      name TEXT,
      creationDate INTEGER,
      ingredients TEXT,
      calories DECIMAL(8,2),
      macros TEXT,
      totalDailyNutrition TEXT
      ) 
      """);
  }

  @override
  Future<void> createDBAndTables() async {
    final dbPath = await getDatabasesPath();
    String path = join(dbPath, "meals.db");

    _db = await openDatabase(
      path,
      onCreate: (db, version) => _createTablesQueries(db),
      onOpen: (db) => _createTablesQueries(db),
      version: 1,
    );
  }

  @override
  Future<void> insertIntoTable({
    required String tableName,
    required Map<String, Object?> json,
  }) async {
    await _db.insert(
      tableName,
      json,
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  @override
  Future<List<Map<String, Object?>>> retrieveSpecificFromTable({
    required String tableName,
    required String id,
  }) async {
    final result = await _db.query(tableName, where: "id = ?", whereArgs: [id]);
    return result;
  }

  @override
  Future<List<Map<String, Object?>>> retrieveAllFromTable({
    required String tableName,
  }) async {
    final results = await _db.query(tableName);
    return results;
  }

  @override
  Future<void> deleteFromTable({
    required String tableName,
    required String id,
  }) async {
    await _db.delete(tableName, where: "id = ?", whereArgs: [id]);
  }

  @override
  Future<void> deleteEntireTable({required String tableName}) async {
    await _db.delete(tableName);
  }
}
