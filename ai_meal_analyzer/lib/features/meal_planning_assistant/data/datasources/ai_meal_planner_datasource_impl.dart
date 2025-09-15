import 'dart:convert';

import 'package:ai_meal_analyzer/core/utils/constants.dart';
import 'package:ai_meal_analyzer/features/meal_planning_assistant/data/datasources/ai_meal_planner_datasource.dart';
import 'package:http/http.dart' as http;

class AiMealPlannerDatasourceImpl extends AiMealPlannerDatasource {
  @override
  Future<http.Response> generateMealPlan() async {
    final response = await http.post(
      GeminiCredentials.GEMINI_GENERATE_CONTENT_URL,
      headers: GeminiCredentials.HEADERS,
      body: jsonEncode({
        "contents": [
          {
            "parts": [
              {"text": ""},
            ],
          },
        ],
      }),
    );

    return response;
  }
}
