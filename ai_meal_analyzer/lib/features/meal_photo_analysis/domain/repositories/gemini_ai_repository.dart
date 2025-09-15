import 'package:image_picker/image_picker.dart';

abstract class GeminiAiRepository {
  Future<String?> analyseImage({required XFile image});
}