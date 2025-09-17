import 'package:ai_meal_analyzer/core/local_storage_service/data/datasources/sqflite_datasource.dart';
import 'package:ai_meal_analyzer/core/local_storage_service/data/datasources/sqlflite_data_source_impl.dart';
import 'package:ai_meal_analyzer/core/local_storage_service/data/repository/sqflite_repository_impl.dart';
import 'package:ai_meal_analyzer/core/local_storage_service/domain/repository/sqflite_repository.dart';
import 'package:ai_meal_analyzer/core/local_storage_service/domain/usecases/delete_from_table.dart';
import 'package:ai_meal_analyzer/core/local_storage_service/domain/usecases/insert_into_meal_analysis_table.dart';
import 'package:ai_meal_analyzer/core/local_storage_service/domain/usecases/insert_into_meal_plans_usecase.dart';
import 'package:ai_meal_analyzer/core/local_storage_service/domain/usecases/retrieve_generated_meal_plans_usecase.dart';
import 'package:ai_meal_analyzer/core/local_storage_service/domain/usecases/retrieve_meal_analysis_table.dart';
import 'package:ai_meal_analyzer/core/local_storage_service/domain/usecases/retrieve_specific_from_meal_analysis_table.dart';
import 'package:ai_meal_analyzer/features/history_and_analytics/presentation/blocs/history_and_analytics_bloc/history_and_analytics_bloc.dart';
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
  getIt.registerFactory(
    () => AiImgAnalyserBloc(
      analyseImageUsecase: getIt(),
      insertIntoMealAnalysisTable: getIt(),
    ),
  );
  getIt.registerFactory(
    () => MealPlanGenerationBloc(
      generateMealPlanUsecase: getIt(),
      insertIntoMealPlansUsecase: getIt(),
    ),
  );
  getIt.registerFactory(
    () => HistoryAndAnalyticsBloc(
      retrieveMealAnalysisTableUsecase: getIt(),
      deleteFromTableUsecase: getIt(),
      retrieveGeneratedMealPlansUsecase: getIt(),
    ),
  );
  getIt.registerLazySingleton(
    () => AnalyseImageUsecase(geminiAiRepository: getIt()),
  );
  getIt.registerLazySingleton<GenerateMealPlanUsecase>(
    () => GenerateMealPlanUsecase(aiMealPlannerGeneratorRepository: getIt()),
  );
  getIt.registerLazySingleton(
    () => InsertIntoMealAnalysisTableUsecase(sqfliteRepository: getIt()),
  );
  getIt.registerLazySingleton(
    () => RetrieveSpecificFromMealAnalysisTableUsecase(
      sqfliteRepository: getIt(),
    ),
  );
  getIt.registerLazySingleton(
    () => RetrieveMealAnalysisTableUsecase(sqfliteRepository: getIt()),
  );
  getIt.registerLazySingleton(
    () => DeleteFromTableUsecase(sqfliteRepository: getIt()),
  );
  getIt.registerLazySingleton(
    () => InsertIntoMealPlansUsecase(sqfliteRepository: getIt()),
  );
  getIt.registerLazySingleton(
    () => RetrieveGeneratedMealPlansUsecase(sqfliteRepository: getIt()),
  );

  getIt.registerLazySingleton<GeminiAiRepository>(
    () => GeminiAiRepositoryImpl(geminiAiDatasource: getIt()),
  );
  getIt.registerLazySingleton<AiMealPlannerGeneratorRepository>(
    () =>
        AiMealPlannerGeneratorRepositoryImpl(aiMealPlannerDatasource: getIt()),
  );
  getIt.registerLazySingleton<SqfliteRepository>(
    () => SqfliteRepositoryImpl(sqfliteDatasource: getIt()),
  );

  getIt.registerLazySingleton<GeminiAiDatasource>(
    () => GeminiAiDatasourceImpl(),
  );
  getIt.registerLazySingleton<AiMealPlannerDatasource>(
    () => AiMealPlannerDatasourceImpl(),
  );
  getIt.registerLazySingleton<SqfliteDatasource>(
    () => SqlfliteDataSourceImpl(),
  );
}
