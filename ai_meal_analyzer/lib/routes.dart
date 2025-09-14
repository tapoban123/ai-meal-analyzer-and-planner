import 'package:ai_meal_analyzer/core/commons/home_view/presentation/screens/home_nav_controller_screen.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  initialLocation: "/",
  routes: [
    GoRoute(path: "/", builder: (context, state) => HomeNavControllerScreen()),
  ],
);
