import 'package:ai_meal_analyzer/core/utils/contants.dart';
import 'package:ai_meal_analyzer/features/meal_photo_analysis/presentation/blocs/ai_img_analyser_bloc/ai_img_analyser_events.dart';
import 'package:ai_meal_analyzer/features/meal_photo_analysis/presentation/blocs/ai_img_analyser_bloc/ai_img_analyser_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AiImgAnalyserBloc extends Bloc<AiImgAnalyserEvents, AiImgAnalyserState> {
  AiImgAnalyserBloc() : super(AiImgAnalyserState()) {
    on<CaptureImageEvent>(_captureImage);
    on<AnalyseImageEvent>(_analyseImage);
  }

  void _captureImage(CaptureImageEvent event, Emitter emit) async {
    final image = await pickImage();
    if (image != null) {
      emit(state.copyWith(image: image));
    }
  }

  void _analyseImage(AnalyseImageEvent event, Emitter emit) {}
}
