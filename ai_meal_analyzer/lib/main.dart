import 'package:ai_meal_analyzer/core/commons/home_view/presentation/blocs/bottom_nav_controller_cubit.dart';
import 'package:ai_meal_analyzer/core/local_storage_service/data/datasources/sqflite_datasource.dart';
import 'package:ai_meal_analyzer/features/history_and_analytics/presentation/blocs/history_and_analytics_bloc/history_and_analytics_bloc.dart';
import 'package:ai_meal_analyzer/features/meal_photo_analysis/presentation/blocs/ai_img_analyser_bloc/ai_img_analyser_bloc.dart';
import 'package:ai_meal_analyzer/features/meal_planning_assistant/presentation/blocs/meal_plan_generator_bloc/meal_plan_generator_bloc.dart';
import 'package:ai_meal_analyzer/injection.dart';
import 'package:flutter/material.dart';
import 'package:ai_meal_analyzer/routes.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  initServices();
  await dotenv.load(fileName: ".env");
  await getIt<SqfliteDatasource>().createDBAndTables();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(412, 915),
      minTextAdapt: true,
      child: MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => BottomNavControllerCubit()),
          BlocProvider(create: (context) => getIt<AiImgAnalyserBloc>()),
          BlocProvider(create: (context) => getIt<MealPlanGenerationBloc>()),
          BlocProvider(create: (context) => getIt<HistoryAndAnalyticsBloc>()),
        ],
        child: MaterialApp.router(
          debugShowCheckedModeBanner: false,
          title: "AI Meal Analyzer & Planner",
          theme: ThemeData.light(useMaterial3: true).copyWith(
            scaffoldBackgroundColor: Colors.white,
            appBarTheme: AppBarTheme(
              backgroundColor: Colors.white,
              surfaceTintColor: Colors.white,
              elevation: 0,
            ),
          ),
          routerConfig: router,
        ),
      ),
    );
  }
}
