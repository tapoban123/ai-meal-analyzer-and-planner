import 'package:ai_meal_analyzer/core/local_storage_service/data/datasources/sqflite_datasource.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class TableNames {
  TableNames._();

  static const mealAnalysisReportsTable = "mealAnalysisReports";
  static const mealPlansTable = "mealPlans";
}

class SqlfliteDataSourceImpl extends SqfliteDatasource {
  late Database db;

  @override
  Future<void> createDBAndTables() async {
    final dbPath = await getDatabasesPath();
    String path = join(dbPath, "meals.db");

    db = await openDatabase(
      path,
      onCreate: (db, version) {
        db.execute("""
      CREATE TABLE ${TableNames.mealAnalysisReportsTable} (
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
      CREATE TABLE ${TableNames.mealPlansTable} (
      id TEXT PRIMARY KEY,
      type TEXT,
      name TEXT,
      ingredients TEXT,
      calories DECIMAL(8,2),
      macros TEXT,
      totalDailyNutrition TEXT
      ) 
      """);
      },
    );
  }

  @override
  Future<void> insertIntoTable({
    required String tableName,
    required Map<String, Object?> json,
  }) async {
    await db.insert(
      tableName,
      json,
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  @override
  Future<void> retrieveSpecificFromTable({
    required String tableName,
    required String id,
  }) async {
    final result = await db.query(tableName, where: "id = ?", whereArgs: [id]);
  }

  @override
  Future<void> retrieveAllFromTable({required String tableName}) async {
    final results = await db.query(tableName);
  }

  @override
  Future<void> deleteFromTable({
    required String tableName,
    required String id,
  }) async {
    await db.delete(tableName, where: "id = ?", whereArgs: [id]);
  }
}
