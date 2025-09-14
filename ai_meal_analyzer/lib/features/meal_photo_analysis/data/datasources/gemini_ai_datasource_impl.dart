import 'dart:convert';
import 'dart:developer';

import 'package:ai_meal_analyzer/core/utils/contants.dart';
import 'package:ai_meal_analyzer/features/meal_photo_analysis/data/datasources/gemini_ai_datasource.dart';
import 'package:http/http.dart' as http;
import 'package:image_picker/image_picker.dart';

class GeminiAiDatasourceImpl extends GeminiAiDatasource {
  @override
  Future<String?> analysePhoto(XFile image) async {
    try {
      String base64Image = base64Encode(await image.readAsBytes());
      final Uri url = Uri.parse(
        "https://generativelanguage.googleapis.com/v1beta/models/gemini-2.5-flash:generateContent",
      );
      final response = await http.post(
        url,
        headers: {
          "x-goog-api-key": GEMINI_API_KEY,
          "Content-Type": "application/json",
        },
        body: jsonEncode({
          "contents": [
            {
              "parts": [
                {
                  "inline_data": {
                    "mime_type": "image/jpeg",
                    "data": base64Image,
                  },
                },
                {"text": "Describe this image."},
              ],
            },
          ],
        }),
      );

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
