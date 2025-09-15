import 'dart:convert';

import 'package:ai_meal_analyzer/core/utils/constants.dart';
import 'package:ai_meal_analyzer/features/meal_photo_analysis/data/datasources/gemini_ai_datasource.dart';
import 'package:http/http.dart' as http;
import 'package:image_picker/image_picker.dart';

class GeminiAiDatasourceImpl extends GeminiAiDatasource {
  @override
  Future<http.Response> analysePhoto(XFile image) async {
    String base64Image = base64Encode(await image.readAsBytes());
    final Uri url = GeminiCredentials.GEMINI_GENERATE_CONTENT_URL;
    final response = await http.post(
      url,
      headers: GeminiCredentials.HEADERS,
      body: jsonEncode({
        "contents": [
          {
            "parts": [
              {
                "inline_data": {"mime_type": "image/jpeg", "data": base64Image},
              },
              {"text": FOOD_IMAGE_ANALYSIS_PROMPT},
            ],
          },
        ],
      }),
    );

    return response;
  }
}
