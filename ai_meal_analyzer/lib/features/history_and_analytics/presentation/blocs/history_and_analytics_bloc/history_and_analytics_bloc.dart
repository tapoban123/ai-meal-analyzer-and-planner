import 'package:ai_meal_analyzer/core/local_storage_service/domain/usecases/delete_from_table.dart';
import 'package:ai_meal_analyzer/core/local_storage_service/domain/usecases/retrieve_meal_analysis_table.dart';
import 'package:ai_meal_analyzer/features/history_and_analytics/presentation/blocs/history_and_analytics_bloc/history_and_analytics_events.dart';
import 'package:ai_meal_analyzer/features/history_and_analytics/presentation/blocs/history_and_analytics_bloc/history_and_analytics_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HistoryAndAnalyticsBloc
    extends Bloc<HistoryAndAnalyticsEvents, HistoryAndAnalyticsStates> {
  final RetrieveMealAnalysisTableUsecase _retrieveMealAnalysisTableUsecase;
  final DeleteFromTableUsecase _deleteFromTableUsecase;

  HistoryAndAnalyticsBloc({
    required RetrieveMealAnalysisTableUsecase retrieveMealAnalysisTableUsecase,
    required DeleteFromTableUsecase deleteFromTableUsecase,
  }) : _retrieveMealAnalysisTableUsecase = retrieveMealAnalysisTableUsecase,
       _deleteFromTableUsecase = deleteFromTableUsecase,
       super(HistoryAndAnalyticsStates()) {
    on<FetchAllMealAnalysisDataEvent>(_fetchMealAnalysisData);
    on<FetchAllMealPlansEvent>(_fetchMealPlansData);
    on<DeleteMealPlanDataEvent>(_deleteMealPlansData);
    on<DeleteMealAnalysisDataEvent>(_deleteMealAnalysisData);
  }

  void _fetchMealAnalysisData(
    FetchAllMealAnalysisDataEvent event,
    Emitter emit,
  ) async {
    emit(state.copyWith(status: HistoryAndAnalyticsStatus.loading));
    final mealAnalysisData = await _retrieveMealAnalysisTableUsecase.call();
    emit(
      state.copyWith(
        status: HistoryAndAnalyticsStatus.success,
        mealAnalysisData: mealAnalysisData,
      ),
    );
  }

  void _fetchMealPlansData(FetchAllMealPlansEvent event, Emitter emit) async {}

  void _deleteMealPlansData(
    DeleteMealPlanDataEvent event,
    Emitter emit,
  ) async {}

  void _deleteMealAnalysisData(
    DeleteMealAnalysisDataEvent event,
    Emitter emit,
  ) async {}
}
