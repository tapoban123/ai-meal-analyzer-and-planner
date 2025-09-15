import 'dart:developer';

import 'package:ai_meal_analyzer/features/meal_photo_analysis/data/datasources/gemini_ai_datasource.dart';
import 'package:ai_meal_analyzer/features/meal_photo_analysis/data/datasources/gemini_ai_datasource_impl.dart';
import 'package:ai_meal_analyzer/features/meal_photo_analysis/domain/repositories/gemini_ai_repository.dart';
import 'package:image_picker/image_picker.dart';

class GeminiAiRepositoryImpl extends GeminiAiRepository {
  final GeminiAiDatasource _geminiAiDatasource;

  GeminiAiRepositoryImpl({
    required GeminiAiDatasource geminiAiDatasource,
  }) : _geminiAiDatasource = geminiAiDatasource;

  @override
  Future<String?> analyseImage({required XFile image}) async {
    try {
      final response = await _geminiAiDatasource.analysePhoto(image);
      if (response.statusCode == 200) {
        return response.body;
      }
      throw Exception("${response.statusCode} Failed to analyse photo.");
    } catch (e) {
      log("[ANALYSE PHOTO ERROR] $e");
    }
    return null;
  }
}
