import 'dart:developer';

import 'package:ai_meal_analyzer/features/meal_planning_assistant/domain/usecases/generate_meal_plan_usecase.dart';
import 'package:ai_meal_analyzer/features/meal_planning_assistant/presentation/blocs/meal_plan_generator_bloc/meal_plan_generator_events.dart';
import 'package:ai_meal_analyzer/features/meal_planning_assistant/presentation/blocs/meal_plan_generator_bloc/meal_plan_generator_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MealPlanGenerationBloc
    extends Bloc<MealPlanGeneratorEvents, MealPlanGenerationStates> {
  final GenerateMealPlanUsecase _generateMealPlanUsecase;

  MealPlanGenerationBloc({
    required GenerateMealPlanUsecase generateMealPlanUsecase,
  }) : _generateMealPlanUsecase = generateMealPlanUsecase,
       super(MealPlanGenerationStates()) {
    on<GenerateMealPlanEvent>(_generateMealPlan);
  }

  void _generateMealPlan(GenerateMealPlanEvent event, Emitter emit) async {
    emit(state.copyWith(status: MealPlanGeneratorStatus.loading));
    final mealPlan = await _generateMealPlanUsecase.call(
      mealDetails: event.mealDetails,
    );
    log(mealPlan.toString());
    emit(
      state.copyWith(
        status: MealPlanGeneratorStatus.success,
        mealPlanWithDailyNutrition: mealPlan,
      ),
    );
  }
}
