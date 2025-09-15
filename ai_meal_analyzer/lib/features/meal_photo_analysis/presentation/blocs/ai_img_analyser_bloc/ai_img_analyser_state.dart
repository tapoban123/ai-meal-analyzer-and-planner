import 'package:ai_meal_analyzer/features/meal_photo_analysis/data/models/meal_details_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';


part 'ai_img_analyser_state.freezed.dart';

enum AIImgAnalyserStatus { initial, loading, success, error }

@freezed
abstract class AiImgAnalyserState with _$AiImgAnalyserState {
  const factory AiImgAnalyserState({
    @Default(AIImgAnalyserStatus.initial) AIImgAnalyserStatus status,
    XFile? image,
    MealDetailsModel? mealDetails,
    String? error,
  }) = _AiImgAnalyserState;
}
