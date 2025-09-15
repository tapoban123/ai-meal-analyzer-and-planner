import 'package:http/http.dart';
import 'package:image_picker/image_picker.dart';

abstract class GeminiAiDatasource {
  Future<Response> analysePhoto(XFile image);
}
