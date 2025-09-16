import 'package:ai_meal_analyzer/core/commons/home_view/presentation/screens/home_nav_controller_screen.dart';
import 'package:ai_meal_analyzer/features/meal_photo_analysis/presentation/screens/meal_analysis_result_screen.dart';
import 'package:ai_meal_analyzer/features/meal_planning_assistant/presentation/screens/view_meal_plans_screen.dart';
import 'package:go_router/go_router.dart';

class RoutePaths {
  RoutePaths._();

  static const String home = "/";
  static const String analysisResult = "/analysisResult";
  static const String viewMealPlans = "/viewMealPlans";
}

final GoRouter router = GoRouter(
  initialLocation: RoutePaths.home,
  routes: [
    GoRoute(
      path: RoutePaths.home,
      builder: (context, state) => HomeNavControllerScreen(),
    ),
    GoRoute(
      path: RoutePaths.analysisResult,
      builder: (context, state) => MealAnalysisResultScreen(),
    ),
    GoRoute(
      path: RoutePaths.viewMealPlans,
      builder: (context, state) => ViewMealPlansScreen(),
    ),
  ],
);
