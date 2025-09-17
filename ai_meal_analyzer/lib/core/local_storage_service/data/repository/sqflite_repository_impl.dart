import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:ai_meal_analyzer/core/local_storage_service/data/datasources/sqflite_datasource.dart';
import 'package:ai_meal_analyzer/core/local_storage_service/data/datasources/sqlflite_data_source_impl.dart';
import 'package:ai_meal_analyzer/core/local_storage_service/domain/repository/sqflite_repository.dart';
import 'package:ai_meal_analyzer/features/meal_photo_analysis/data/models/meal_details_model.dart';
import 'package:ai_meal_analyzer/features/meal_planning_assistant/data/models/generated_meal_plan_model.dart';
import 'package:image_picker/image_picker.dart';

class SqfliteRepositoryImpl extends SqfliteRepository {
  final SqfliteDatasource _sqfliteDatasource;

  SqfliteRepositoryImpl({required SqfliteDatasource sqfliteDatasource})
    : _sqfliteDatasource = sqfliteDatasource;

  @override
  Future<void> insertIntoMealAnalysisTable({
    required File image,
    required MealDetailsModel meal,
  }) async {
    try {
      final mealDetails = meal.toJson();
      mealDetails["ingredientsList"] = jsonEncode(meal.ingredientsList);
      mealDetails["image"] = jsonEncode(await image.readAsBytes());
      log(mealDetails.toString());

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

      for (final eachMeal in mealDetails) {
        final json = eachMeal.toJson();
        json["totalDailyNutrition"] = jsonEncode(meal.totalDailyNutrition);
        json["ingredients"] = jsonEncode(eachMeal.ingredients);
        json["macros"] = jsonEncode(eachMeal.macros);
        json["creationDate"] = meal.creationDate!.millisecondsSinceEpoch;
        json["id"] = meal.id;

        _sqfliteDatasource.insertIntoTable(
          tableName: TableNames.mealPlansTable,
          json: json,
        );
      }
    } catch (e) {
      log("[INSERT INTO MEAL PLANS ERROR] $e");
    }
  }

  @override
  Future<List<MealDetailsModel>> retrieveAllFromMealAnalysisTable() async {
    try {
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
            image: item["image"] as String,
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
    } catch (e) {
      log("[FETCH FROM MEAL ANALYSIS TABLE ERROR] $e");
      return [];
    }
  }

  @override
  Future<List<GeneratedMealPlanModel>> retrieveAllFromMealPlansTable() async {
    try {
      final results = await _sqfliteDatasource.retrieveAllFromTable(
        tableName: TableNames.mealPlansTable,
      );
      log(results.toString());
      final List<GeneratedMealPlanModel> data = [];
      final List<MealPlanModel> mealPlans = [];

      for (final item in results) {
        final id = item["id"] as String;

        if (!data.any((element) => element.id == id)) {
          for (final meal in results) {
            if (meal["id"] == id) {
              final mealPlanModel = MealPlanModel(
                type: meal["type"] as String,
                name: meal["name"] as String,
                ingredients: List<String>.from(
                  jsonDecode(meal["ingredients"] as String),
                ),
                calories: double.parse(meal["calories"].toString()),
                macros: Map<String, double>.from(
                  jsonDecode(meal["macros"] as String),
                ),
                mealId: meal["mealId"] as String,
              );

              mealPlans.add(mealPlanModel);
            }
          }
          final generatedMealPlan = GeneratedMealPlanModel(
            id: id,
            mealPlans: mealPlans,
            creationDate: DateTime.fromMillisecondsSinceEpoch(
              item["creationDate"] as int,
            ),
            totalDailyNutrition: Map<String, double>.from(
              jsonDecode(item["totalDailyNutrition"] as String),
            ),
          );
          data.add(generatedMealPlan);
        }
      }
      return data;
    } catch (e) {
      log("[FETCH FROM MEAL ANALYSIS TABLE ERROR] $e");
      return [];
    }
  }

  @override
  Future<void> deleteFromTable({
    required String tableName,
    required String id,
  }) async {
    await _sqfliteDatasource.deleteFromTable(tableName: tableName, id: id);
  }

  @override
  Future<void> deleteAllRowsFromTable({required String tableName}) async {
    await _sqfliteDatasource.deleteAllRowsFromTable(tableName: tableName);
  }
}
