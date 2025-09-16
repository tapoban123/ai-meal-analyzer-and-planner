import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:ai_meal_analyzer/core/utils/constants.dart';
import 'package:ai_meal_analyzer/features/meal_photo_analysis/data/datasources/gemini_ai_datasource.dart';
import 'package:ai_meal_analyzer/features/meal_photo_analysis/data/models/meal_details_model.dart';
import 'package:ai_meal_analyzer/features/meal_photo_analysis/domain/repositories/gemini_ai_repository.dart';
import 'package:image_picker/image_picker.dart';

class GeminiAiRepositoryImpl extends GeminiAiRepository {
  final GeminiAiDatasource _geminiAiDatasource;

  GeminiAiRepositoryImpl({required GeminiAiDatasource geminiAiDatasource})
    : _geminiAiDatasource = geminiAiDatasource;

  @override
  Future<MealDetailsModel?> analyseImage({required XFile image}) async {
    try {
      final response = await _geminiAiDatasource.analysePhoto(image);
      if (response.statusCode == 200) {
        log(response.body);
        log(
          jsonDecode(
            jsonDecode(
              response.body,
            )["candidates"][0]["content"]["parts"][0]["text"],
          ).toString(),
        );
        return MealDetailsModel.fromJson(
          geminiResponseFormatter(response.body),
        );
      }
      throw Exception(response.body);
    } catch (e) {
      log("[ANALYSE PHOTO ERROR] $e");
      // throw HttpException("${e.statusCode} ${e.body}.");
    }
    return null;
  }
}
