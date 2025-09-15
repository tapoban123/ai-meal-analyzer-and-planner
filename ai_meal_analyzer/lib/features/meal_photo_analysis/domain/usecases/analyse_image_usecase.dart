import 'package:ai_meal_analyzer/features/meal_photo_analysis/domain/repositories/gemini_ai_repository.dart';
import 'package:image_picker/image_picker.dart';

class AnalyseImageUsecase {
  final GeminiAiRepository _geminiAiRepository;

  AnalyseImageUsecase({required GeminiAiRepository geminiAiRepository})
    : _geminiAiRepository = geminiAiRepository;

  Future<String?> call({required XFile image}) async {
    return await _geminiAiRepository.analyseImage(image: image);
  }
}
