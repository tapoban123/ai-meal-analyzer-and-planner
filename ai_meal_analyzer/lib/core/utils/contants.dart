import 'package:flutter/cupertino.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';

final String GEMINI_API_KEY = dotenv.get("GEMINI_API_KEY");

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
