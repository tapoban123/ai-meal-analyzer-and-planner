import 'package:http/http.dart';

abstract class AiMealPlannerDatasource {
  Future<Response> generateMealPlan();
}