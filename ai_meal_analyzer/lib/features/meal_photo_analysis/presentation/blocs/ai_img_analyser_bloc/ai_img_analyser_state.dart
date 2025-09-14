import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';


part 'ai_img_analyser_state.freezed.dart';

enum AIImgAnalyserStatus { initial, loading, success, error }

@freezed
abstract class AiImgAnalyserState with _$AiImgAnalyserState {
  const factory AiImgAnalyserState({
    @Default(AIImgAnalyserStatus.initial) AIImgAnalyserStatus status,
    XFile? image,
    String? mealDetails,
    String? error,
  }) = _AiImgAnalyserState;
}
