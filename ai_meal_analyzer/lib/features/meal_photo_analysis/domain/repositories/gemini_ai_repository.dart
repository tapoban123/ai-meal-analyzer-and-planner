import 'package:ai_meal_analyzer/features/meal_photo_analysis/data/models/meal_details_model.dart';
import 'package:image_picker/image_picker.dart';

abstract class GeminiAiRepository {
  Future<MealDetailsModel?> analyseImage({required XFile image});
}