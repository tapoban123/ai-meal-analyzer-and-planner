import 'package:image_picker/image_picker.dart';

sealed class AiImgAnalyserEvents {}

class AnalyseImageEvent extends AiImgAnalyserEvents {}

class CaptureImageEvent extends AiImgAnalyserEvents {
  final ImageSource imgSource;

  CaptureImageEvent({required this.imgSource});
}

// class Event extends AiImgAnalyserEvents {}
