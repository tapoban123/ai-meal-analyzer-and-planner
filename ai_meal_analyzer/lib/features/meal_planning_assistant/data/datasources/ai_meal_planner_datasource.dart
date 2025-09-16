import 'package:http/http.dart';

abstract class AiMealPlannerDatasource {
  Future<Response> generateMealPlan({
    required String preferences,
    required String restrictions,
    required double calories,
    required String macroGoals,
    required String mealType,
  });
}
