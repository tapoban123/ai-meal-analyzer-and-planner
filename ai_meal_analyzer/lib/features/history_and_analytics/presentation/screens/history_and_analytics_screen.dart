import 'package:ai_meal_analyzer/features/history_and_analytics/presentation/blocs/history_and_analytics_bloc/history_and_analytics_bloc.dart';
import 'package:ai_meal_analyzer/features/history_and_analytics/presentation/blocs/history_and_analytics_bloc/history_and_analytics_events.dart';
import 'package:ai_meal_analyzer/features/history_and_analytics/presentation/blocs/history_and_analytics_bloc/history_and_analytics_states.dart';
import 'package:ai_meal_analyzer/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

class HistoryAndAnalyticsScreen extends StatefulWidget {
  const HistoryAndAnalyticsScreen({super.key});

  @override
  State<HistoryAndAnalyticsScreen> createState() =>
      _HistoryAndAnalyticsScreenState();
}

class _HistoryAndAnalyticsScreenState extends State<HistoryAndAnalyticsScreen> {
  @override
  void initState() {
    context.read<HistoryAndAnalyticsBloc>().add(FetchMealsDataEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("History & Analytics"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.delete_forever, color: Colors.red),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: BlocConsumer<HistoryAndAnalyticsBloc, HistoryAndAnalyticsStates>(
          listener: (context, state) {},
          builder: (context, state) {
            return Column(
              children: [
                Text(
                  "Meal Analysis History",
                  style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child:
                      state.mealAnalysisData != null &&
                          state.mealAnalysisData!.isNotEmpty
                      ? ListView.builder(
                          itemCount: state.mealAnalysisData!.length,
                          itemBuilder: (context, index) {
                            final mealData = state.mealAnalysisData![index];

                            return Card(
                              child: ListTile(
                                title: Text(mealData.mealName),
                                subtitle: Text(
                                  mealData.description,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                onTap: () {
                                  context.push(
                                    RoutePaths.analysisResultHistory,
                                    extra: mealData,
                                  );
                                },
                              ),
                            );
                          },
                        )
                      : Center(child: Text("No history")),
                ),
                30.verticalSpace,
                Text(
                  "Meal Plan History",
                  style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child:
                      state.mealPlansData != null &&
                          state.mealPlansData!.isNotEmpty
                      ? ListView.builder(
                          itemCount: state.mealPlansData!.length,
                          padding: EdgeInsets.only(bottom: 10.w),
                          itemBuilder: (context, index) {
                            final meal = state.mealPlansData![index];

                            return Card(
                              child: ListTile(
                                title: Text(
                                  "Meal Plan of ${formatDateTimeForMealPlanTitle(meal.creationDate!)}",
                                ),
                                onTap: () {
                                  context.push(
                                    RoutePaths.viewMealsPlansHistory,
                                    extra: [
                                      meal.mealPlans,
                                      meal.totalDailyNutrition,
                                    ],
                                  );
                                },
                              ),
                            );
                          },
                        )
                      : Center(child: Text("No Meal Plans History")),
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  String formatDateTimeForMealPlanTitle(DateTime datetime) {
    return DateFormat("EEE, dd MMM y, K:m a").format(datetime);
  }
}
