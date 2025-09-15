import 'package:ai_meal_analyzer/features/meal_photo_analysis/data/datasources/gemini_ai_datasource.dart';
import 'package:ai_meal_analyzer/features/meal_photo_analysis/data/datasources/gemini_ai_datasource_impl.dart';
import 'package:ai_meal_analyzer/features/meal_photo_analysis/data/repositories/gemini_ai_repository_impl.dart';
import 'package:ai_meal_analyzer/features/meal_photo_analysis/domain/repositories/gemini_ai_repository.dart';
import 'package:ai_meal_analyzer/features/meal_photo_analysis/domain/usecases/analyse_image_usecase.dart';
import 'package:ai_meal_analyzer/features/meal_photo_analysis/presentation/blocs/ai_img_analyser_bloc/ai_img_analyser_bloc.dart';
import 'package:get_it/get_it.dart';

final GetIt getIt = GetIt.instance;

void initServices() {
  getIt.registerFactory(() => AiImgAnalyserBloc(analyseImageUsecase: getIt()));

  getIt.registerLazySingleton(
    () => AnalyseImageUsecase(geminiAiRepository: getIt()),
  );
  getIt.registerLazySingleton<GeminiAiRepository>(
    () => GeminiAiRepositoryImpl(geminiAiDatasource: getIt()),
  );
  getIt.registerLazySingleton<GeminiAiDatasource>(
    () => GeminiAiDatasourceImpl(),
  );
}
