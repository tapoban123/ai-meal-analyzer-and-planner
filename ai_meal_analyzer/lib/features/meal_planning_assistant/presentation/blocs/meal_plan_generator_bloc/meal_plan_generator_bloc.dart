import 'dart:developer';

import 'package:ai_meal_analyzer/core/local_storage_service/domain/usecases/insert_into_meal_plans_usecase.dart';
import 'package:ai_meal_analyzer/features/meal_planning_assistant/data/models/generated_meal_plan_model.dart';
import 'package:ai_meal_analyzer/features/meal_planning_assistant/domain/usecases/generate_meal_plan_usecase.dart';
import 'package:ai_meal_analyzer/features/meal_planning_assistant/presentation/blocs/meal_plan_generator_bloc/meal_plan_generator_events.dart';
import 'package:ai_meal_analyzer/features/meal_planning_assistant/presentation/blocs/meal_plan_generator_bloc/meal_plan_generator_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uuid/uuid.dart';

class MealPlanGenerationBloc
    extends Bloc<MealPlanGeneratorEvents, MealPlanGenerationStates> {
  final GenerateMealPlanUsecase _generateMealPlanUsecase;
  final InsertIntoMealPlansUsecase _insertIntoMealPlansUsecase;

  MealPlanGenerationBloc({
    required GenerateMealPlanUsecase generateMealPlanUsecase,
    required InsertIntoMealPlansUsecase insertIntoMealPlansUsecase,
  }) : _generateMealPlanUsecase = generateMealPlanUsecase,
       _insertIntoMealPlansUsecase = insertIntoMealPlansUsecase,
       super(MealPlanGenerationStates()) {
    on<GenerateMealPlanEvent>(_generateMealPlan);
  }

  void _generateMealPlan(GenerateMealPlanEvent event, Emitter emit) async {
    emit(state.copyWith(status: MealPlanGeneratorStatus.loading));
    final mealPlan = await _generateMealPlanUsecase.call(
      mealDetails: event.mealDetails,
    );

    final mealPlanWithDatetime = mealPlan?.copyWith(
      creationDate: DateTime.now(),
    );

    if (mealPlanWithDatetime != null) {
      final List<MealPlanModel> mealPlansWithId = [];
      for (final meal in mealPlanWithDatetime.mealPlans) {
        mealPlansWithId.add(meal.copyWith(mealId: Uuid().v1()));
      }

      final mealPlanWithId = mealPlanWithDatetime.copyWith(
        id: Uuid().v4(),
        mealPlans: mealPlansWithId,
      );
      await _insertIntoMealPlansUsecase.call(meal: mealPlanWithId);
    }

    emit(
      state.copyWith(
        status: MealPlanGeneratorStatus.success,
        mealPlanWithDailyNutrition: mealPlanWithDatetime,
      ),
    );
  }
}
