import 'package:flutter/cupertino.dart';
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

DO NOT USE JSON  MARKDOWN FORMATTING.

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

""";
