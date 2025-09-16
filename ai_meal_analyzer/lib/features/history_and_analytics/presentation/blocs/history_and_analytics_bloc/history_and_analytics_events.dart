sealed class HistoryAndAnalyticsEvents {}

class FetchAllMealAnalysisDataEvent extends HistoryAndAnalyticsEvents {}

class FetchAllMealPlansEvent extends HistoryAndAnalyticsEvents {}

class DeleteMealAnalysisDataEvent extends HistoryAndAnalyticsEvents {
  final String id;

  DeleteMealAnalysisDataEvent({required this.id});
}

class DeleteMealPlanDataEvent extends HistoryAndAnalyticsEvents {
  final String id;

  DeleteMealPlanDataEvent({required this.id});
}
