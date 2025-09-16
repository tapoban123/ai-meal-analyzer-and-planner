import 'dart:convert';
import 'dart:developer';

import 'package:ai_meal_analyzer/core/local_storage_service/data/datasources/sqflite_datasource.dart';
import 'package:ai_meal_analyzer/core/local_storage_service/data/datasources/sqlflite_data_source_impl.dart';
import 'package:ai_meal_analyzer/core/local_storage_service/domain/repository/sqflite_repository.dart';
import 'package:ai_meal_analyzer/features/meal_photo_analysis/data/models/meal_details_model.dart';
import 'package:ai_meal_analyzer/features/meal_planning_assistant/data/models/generated_meal_plan_model.dart';

class SqfliteRepositoryImpl extends SqfliteRepository {
  final SqfliteDatasource _sqfliteDatasource;

  SqfliteRepositoryImpl({required SqfliteDatasource sqfliteDatasource})
    : _sqfliteDatasource = sqfliteDatasource;

  @override
  Future<void> insertIntoMealAnalysisTable({
    required MealDetailsModel meal,
  }) async {
    try {
      final mealDetails = meal.toJson();
      mealDetails["ingredientsList"] = jsonEncode(meal.ingredientsList);

      _sqfliteDatasource.insertIntoTable(
        tableName: TableNames.mealAnalysisReportsTable,
        json: mealDetails,
      );
    } catch (e) {
      log("[INSERT INTO MEAL ANALYSIS ERROR] $e");
    }
  }

  @override
  Future<void> insertIntoMealPlansTable({
    required GeneratedMealPlanModel meal,
  }) async {
    try {
      final mealDetails = meal.mealPlans;
      // mealDetails["ingredientsList"] = meal.ingredientsList.toString();

      // _sqfliteDatasource.insertIntoTable(
      //   tableName: TableNames.mealAnalysisReportsTable,
      //   json: mealDetails,
      // );
    } catch (e) {
      log("[INSERT INTO MEAL ANALYSIS ERROR] $e");
    }
  }

  @override
  Future<List<MealDetailsModel>> retrieveAllFromMealAnalysisTable() async {
    final results = await _sqfliteDatasource.retrieveAllFromTable(
      tableName: TableNames.mealAnalysisReportsTable,
    );
    final List<MealDetailsModel> data = [];

    for (final item in results) {
      log(item.toString());
      log(item["ingredientsList"].toString());
      data.add(
        MealDetailsModel(
          id: item["id"] as String,
          mealName: item["mealName"] as String,
          description: item["description"] as String,
          calories: double.parse(item["calories"].toString()),
          protein: double.parse(item["protein"].toString()),
          carbs: double.parse(item["carbs"].toString()),
          fat: double.parse(item["fat"].toString()),
          fiber: double.parse(item["fiber"].toString()),
          otherNutrients: double.parse(item["otherNutrients"].toString()),
          ingredientsList: List<String>.from(
            jsonDecode(item["ingredientsList"] as String),
          ),
        ),
      );
    }
    return data;
  }

  @override
  Future<List<GeneratedMealPlanModel>> retrieveAllFromMealPlansTable() async {
    // TODO: implement retrieveAllFromMealPlansTable
    throw UnimplementedError();
  }

  @override
  Future<MealDetailsModel> retrieveSpecificFromMealAnalysisTable({
    required String id,
  }) async {
    final result = await _sqfliteDatasource.retrieveSpecificFromTable(
      tableName: TableNames.mealAnalysisReportsTable,
      id: id,
    );

    return MealDetailsModel.fromJson(result.first).copyWith(
      ingredientsList: jsonDecode(result.first["ingredientsList"] as String),
    );
  }

  @override
  Future<GeneratedMealPlanModel> retrieveSpecificFromMealPlansTable({
    required String id,
  }) async {
    // TODO: implement retrieveSpecificFromMealPlansTable
    throw UnimplementedError();
  }

  @override
  Future<void> deleteFromTable({
    required String tableName,
    required String id,
  }) async {
    await _sqfliteDatasource.deleteFromTable(tableName: tableName, id: id);
  }
}
