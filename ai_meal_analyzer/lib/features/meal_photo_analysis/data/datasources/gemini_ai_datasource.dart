import 'package:image_picker/image_picker.dart';

abstract class GeminiAiDatasource {
  Future<String?> analysePhoto(XFile image);
}
