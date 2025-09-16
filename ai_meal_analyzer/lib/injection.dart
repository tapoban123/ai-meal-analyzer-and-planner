import 'package:ai_meal_analyzer/features/meal_photo_analysis/data/datasources/gemini_ai_datasource.dart';
import 'package:ai_meal_analyzer/features/meal_photo_analysis/data/datasources/gemini_ai_datasource_impl.dart';
import 'package:ai_meal_analyzer/features/meal_photo_analysis/data/repositories/gemini_ai_repository_impl.dart';
import 'package:ai_meal_analyzer/features/meal_photo_analysis/domain/repositories/gemini_ai_repository.dart';
import 'package:ai_meal_analyzer/features/meal_photo_analysis/domain/usecases/analyse_image_usecase.dart';
import 'package:ai_meal_analyzer/features/meal_photo_analysis/presentation/blocs/ai_img_analyser_bloc/ai_img_analyser_bloc.dart';
import 'package:ai_meal_analyzer/features/meal_planning_assistant/data/datasources/ai_meal_planner_datasource.dart';
import 'package:ai_meal_analyzer/features/meal_planning_assistant/data/datasources/ai_meal_planner_datasource_impl.dart';
import 'package:ai_meal_analyzer/features/meal_planning_assistant/data/repositories/ai_meal_planner_generator_repository_impl.dart';
import 'package:ai_meal_analyzer/features/meal_planning_assistant/domain/repositories/ai_meal_planner_generator_repository.dart';
import 'package:ai_meal_analyzer/features/meal_planning_assistant/domain/usecases/generate_meal_plan_usecase.dart';
import 'package:ai_meal_analyzer/features/meal_planning_assistant/presentation/blocs/meal_plan_generator_bloc/meal_plan_generator_bloc.dart';
import 'package:get_it/get_it.dart';

final GetIt getIt = GetIt.instance;

void initServices() {
  getIt.registerFactory(() => AiImgAnalyserBloc(analyseImageUsecase: getIt()));
  getIt.registerFactory(
    () => MealPlanGenerationBloc(generateMealPlanUsecase: getIt()),
  );

  getIt.registerLazySingleton(
    () => AnalyseImageUsecase(geminiAiRepository: getIt()),
  );
  getIt.registerLazySingleton<GenerateMealPlanUsecase>(
    () => GenerateMealPlanUsecase(aiMealPlannerGeneratorRepository: getIt()),
  );

  getIt.registerLazySingleton<GeminiAiRepository>(
    () => GeminiAiRepositoryImpl(geminiAiDatasource: getIt()),
  );
  getIt.registerLazySingleton<AiMealPlannerGeneratorRepository>(
    () =>
        AiMealPlannerGeneratorRepositoryImpl(aiMealPlannerDatasource: getIt()),
  );

  getIt.registerLazySingleton<GeminiAiDatasource>(
    () => GeminiAiDatasourceImpl(),
  );
  getIt.registerLazySingleton<AiMealPlannerDatasource>(
    () => AiMealPlannerDatasourceImpl(),
  );
}
