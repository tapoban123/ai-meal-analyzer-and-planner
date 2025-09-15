import 'dart:developer';

import 'package:ai_meal_analyzer/core/utils/constants.dart';
import 'package:ai_meal_analyzer/features/meal_photo_analysis/domain/usecases/analyse_image_usecase.dart';
import 'package:ai_meal_analyzer/features/meal_photo_analysis/presentation/blocs/ai_img_analyser_bloc/ai_img_analyser_events.dart';
import 'package:ai_meal_analyzer/features/meal_photo_analysis/presentation/blocs/ai_img_analyser_bloc/ai_img_analyser_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AiImgAnalyserBloc extends Bloc<AiImgAnalyserEvents, AiImgAnalyserState> {
  final AnalyseImageUsecase _analyseImageUsecase;

  AiImgAnalyserBloc({required AnalyseImageUsecase analyseImageUsecase})
    : _analyseImageUsecase = analyseImageUsecase,
      super(AiImgAnalyserState()) {
    on<CaptureImageEvent>(_captureImage);
    on<AnalyseImageEvent>(_analyseImage);
  }

  void _captureImage(CaptureImageEvent event, Emitter emit) async {
    final image = await pickImage();
    if (image != null) {
      emit(state.copyWith(image: image));
    }
  }

  void _analyseImage(AnalyseImageEvent event, Emitter emit) async {
    if (state.image != null) {
      emit(state.copyWith(status: AIImgAnalyserStatus.loading));
      final analysisResult = await _analyseImageUsecase.call(
        image: state.image!,
      );

      emit(
        state.copyWith(
          status: AIImgAnalyserStatus.success,
          mealDetails: analysisResult,
        ),
      );
    }
  }
}
