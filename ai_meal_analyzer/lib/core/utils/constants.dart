import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:image_picker/image_picker.dart';

class GeminiCredentials {
  GeminiCredentials._();

  static final String GEMINI_API_KEY = dotenv.get("GEMINI_API_KEY");
  static final Uri GEMINI_GENERATE_CONTENT_URL = Uri.parse(
    dotenv.get("GEMINI_CONTENT_URL"),
  );
  static final Map<String, String> HEADERS = {
    "x-goog-api-key": GeminiCredentials.GEMINI_API_KEY,
    "Content-Type": "application/json",
  };
}

Future<XFile?> pickImage() async {
  final ImagePicker picker = ImagePicker();

  // final XFile? file = await picker.pickImage(source: ImageSource.camera);
  final XFile? file = await picker.pickImage(source: ImageSource.gallery);
  return file;
}

double getScreenWidth(BuildContext context) {
  return MediaQuery.sizeOf(context).width;
}

double getScreenHeight(BuildContext context) {
  return MediaQuery.sizeOf(context).height;
}

void showProgressLoaderDialog(BuildContext context) {
  showDialog(
    context: context,
    barrierDismissible: false,
    builder: (context) =>
        Center(child: CircularProgressIndicator(color: Colors.white)),
  );
}

Map<String, Object?> geminiResponseFormatter(String responseBody) {
  return jsonDecode(
    jsonDecode(responseBody)["candidates"][0]["content"]["parts"][0]["text"],
  );
}

const String FOOD_IMAGE_ANALYSIS_PROMPT = """
You are given an image of food. Analyze the food in the image and generate the following data in strict Dart Map<String, Object> format only (no extra text, no markdown, no explanation). The structure must be compatible with Dart's fromJson parsing.

Required Dart Map structure:
{
  "mealName": "String",
  "description": "String",
  "calories": double,
  "protein": double,
  "carbs": double,
  "fat": double,
  "fiber": double,
  "otherNutrients": double,
  "ingredientsList": ["String", "String", ...]
}

DO NOT USE JSON MARKDOWN FORMATTING.

Instructions:
- Always return the output strictly as a Dart map object (no comments, no markdown).
- mealName: Short name of the meal.
- description: A concise description of the food in natural language.
- calories: Approximate total calories (in kcal).
- protein, carbs, fat, fiber: Estimated macronutrient amounts (in grams).
- otherNutrients: Key micronutrients or notable values (e.g., Vitamin C, Iron, Sodium).
- ingredientsList: List of likely ingredients detected in the meal.
- Ensure the output is only valid JSON and does not include anything outside the JSON structure.
""";

String MEAL_PLAN_GENERATE_PROMPT({
  required String preferences,
  required String restrictions,
  required double calories,
  required String macroGoals,
  required String mealType,
}) => """
You are a professional nutritionist AI. Your task is to generate a daily meal plan based on the user’s inputs. The user will provide:
1. Dietary preferences (e.g., vegetarian, vegan, keto, etc.)
2. Restrictions (e.g., no peanuts, no dairy, gluten-free, etc.)
3. Daily calorie targets (e.g., 2000 kcal)
4. Macro goals (protein, carbs, fats in grams or percentages)
5. Desired meal (name of the dish, if provided)
6. Specific meal type(s): ALL, BREAKFAST, LUNCH, SNACKS, DINNER

Output Requirements:
1. Generate a meal plan containing the required meal type(s).
2. Each meal should have:
3. name (string) – dish name
4. ingredients (List<String>) – list of ingredients
5. calories (double) – approximate calories for that meal
6. macros (Map<String,double>) – {"protein":..., "carbs":..., "fats":...}
7. Generate totalDailyNutrition as a Map<String,double> containing: Calories, macros, vitamins, minerals, and other nutrients (e.g., fiber, sugar, sodium, potassium, calcium, iron, vitamin A, vitamin C, vitamin D, etc.). Do not restrict to only four fixed nutrients. Include all relevant nutrients available.

Output strictly in the following Dart structure:
{
  "mealPlans": [
    {
      "type": "BREAKFAST",
      "name": "Oatmeal with Berries",
      "ingredients": ["Oats", "Blueberries", "Almond Milk", "Chia Seeds"],
      "calories": 350.0,
      "macros": {
        "protein": 12.0,
        "carbs": 55.0,
        "fats": 8.0
      }
    },
    {
      "type": "LUNCH",
      "name": "Grilled Chicken Salad",
      "ingredients": ["Chicken Breast", "Lettuce", "Tomatoes", "Olive Oil"],
      "calories": 500.0,
      "macros": {
        "protein": 40.0,
        "carbs": 20.0,
        "fats": 20.0
      }
    }
  ],
  "totalDailyNutrition": {
    "calories": 1850.0,
    "protein": 120.0,
    "carbs": 200.0,
    "fats": 70.0,
    <other_nutrients>
  }
}

DO NOT USE JSON  MARKDOWN FORMATTING.

⚠️ Important:
- Return the output in valid JSON/Dart Map format only (no extra text or explanation).
- Do not omit totalDailyNutrition fields; include all available nutrients from the meals.
- Round numeric values to 2 decimal place.

Inputs:
Preferences: $preferences,
Restrictions: $restrictions,
Target Calories: $calories,
Macro Goals: $macroGoals,
MealType: $mealType
""";
