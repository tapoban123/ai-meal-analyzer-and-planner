import 'dart:developer';

import 'package:ai_meal_analyzer/core/local_storage_service/domain/usecases/delete_from_table.dart';
import 'package:ai_meal_analyzer/core/local_storage_service/domain/usecases/retrieve_generated_meal_plans_usecase.dart';
import 'package:ai_meal_analyzer/core/local_storage_service/domain/usecases/retrieve_meal_analysis_table.dart';
import 'package:ai_meal_analyzer/features/history_and_analytics/presentation/blocs/history_and_analytics_bloc/history_and_analytics_events.dart';
import 'package:ai_meal_analyzer/features/history_and_analytics/presentation/blocs/history_and_analytics_bloc/history_and_analytics_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HistoryAndAnalyticsBloc
    extends Bloc<HistoryAndAnalyticsEvents, HistoryAndAnalyticsStates> {
  final RetrieveMealAnalysisTableUsecase _retrieveMealAnalysisTableUsecase;
  final DeleteFromTableUsecase _deleteFromTableUsecase;
  final RetrieveGeneratedMealPlansUsecase _retrieveGeneratedMealPlansUsecase;

  HistoryAndAnalyticsBloc({
    required RetrieveMealAnalysisTableUsecase retrieveMealAnalysisTableUsecase,
    required DeleteFromTableUsecase deleteFromTableUsecase,
    required RetrieveGeneratedMealPlansUsecase
    retrieveGeneratedMealPlansUsecase,
  }) : _retrieveMealAnalysisTableUsecase = retrieveMealAnalysisTableUsecase,
       _deleteFromTableUsecase = deleteFromTableUsecase,
       _retrieveGeneratedMealPlansUsecase = retrieveGeneratedMealPlansUsecase,
       super(HistoryAndAnalyticsStates()) {
    on<AddNewMealPlanEvent>(_addNewMealPlan);
    on<AddNewMealAnalysisReportEvent>(_addNewMealAnalysisReport);
    on<FetchMealsDataEvent>(_fetchMealsData);
    on<DeleteMealPlanDataEvent>(_deleteMealPlansData);
    on<DeleteMealAnalysisDataEvent>(_deleteMealAnalysisData);
  }

  void _fetchMealsData(FetchMealsDataEvent event, Emitter emit) async {
    emit(state.copyWith(status: HistoryAndAnalyticsStatus.loading));
    final mealAnalysisData = await _retrieveMealAnalysisTableUsecase.call();
    final mealPlansData = await _retrieveGeneratedMealPlansUsecase.call();
    log(mealPlansData.toString());
    emit(
      state.copyWith(
        status: HistoryAndAnalyticsStatus.success,
        mealAnalysisData: mealAnalysisData,
        mealPlansData: mealPlansData,
      ),
    );
  }

  void _addNewMealPlan(AddNewMealPlanEvent event, Emitter emit) {
    emit(
      state.copyWith(
        mealPlansData: List.from([
          event.newMealPlan,
          ...(state.mealPlansData ?? []),
        ]),
      ),
    );
  }

  void _addNewMealAnalysisReport(
    AddNewMealAnalysisReportEvent event,
    Emitter emit,
  ) {
    emit(
      state.copyWith(
        mealAnalysisData: List.from([
          event.newMealDetails,
          ...(state.mealAnalysisData ?? []),
        ]),
      ),
    );
  }

  void _deleteMealPlansData(
    DeleteMealPlanDataEvent event,
    Emitter emit,
  ) async {}

  void _deleteMealAnalysisData(
    DeleteMealAnalysisDataEvent event,
    Emitter emit,
  ) async {}
}
