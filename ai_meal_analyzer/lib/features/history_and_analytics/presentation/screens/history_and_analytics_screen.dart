import 'package:ai_meal_analyzer/core/utils/constants.dart';
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
      appBar: AppBar(title: Text("History & Analytics"), centerTitle: true),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: BlocConsumer<HistoryAndAnalyticsBloc, HistoryAndAnalyticsStates>(
          listener: (context, state) {},
          builder: (context, state) {
            return Column(
              children: [
                getSectionHeading(
                  heading: "Meal Analysis History",
                  onDelete: () {
                    showMsgDialog(
                      context,
                      heading: "Delete Meal Analysis Reports?",
                      message:
                          "Are you sure you want to delete your meal analysis reports history?",
                      onTap: () {
                        context.read<HistoryAndAnalyticsBloc>().add(
                          DeleteMealAnalysisDataEvent(),
                        );
                      },
                      showCancelButton: true,
                      buttonText: "Delete",
                      buttonColor: Colors.red,
                    );
                  },
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                    padding: EdgeInsets.all(6.w),
                    child:
                        state.mealAnalysisData != null &&
                            state.mealAnalysisData!.isNotEmpty
                        ? ListView.builder(
                            itemCount: state.mealAnalysisData!.length,
                            itemBuilder: (context, index) {
                              final mealData = state.mealAnalysisData![index];

                              return Card(
                                color: Colors.tealAccent,
                                child: ListTile(
                                  title: Text(
                                    mealData.mealName,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
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
                        : noDataWidget("No Meal Analysis Reports History"),
                  ),
                ),
                30.verticalSpace,
                getSectionHeading(
                  heading: "Meal Plans History",
                  onDelete: () {
                    showMsgDialog(
                      context,
                      heading: "Delete Meal Plans?",
                      message:
                          "Are you sure you want to delete your meal plans history?",
                      onTap: () {
                        context.read<HistoryAndAnalyticsBloc>().add(
                          DeleteMealPlanDataEvent(),
                        );
                      },
                      showCancelButton: true,
                      buttonText: "Delete",
                      buttonColor: Colors.red,
                    );
                  },
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: EdgeInsets.only(bottom: 6.w),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                    padding: EdgeInsets.all(6.w),
                    child:
                        state.mealPlansData != null &&
                            state.mealPlansData!.isNotEmpty
                        ? ListView.builder(
                            itemCount: state.mealPlansData!.length,
                            padding: EdgeInsets.only(bottom: 10.w),
                            itemBuilder: (context, index) {
                              final meal = state.mealPlansData![index];

                              return Card(
                                color: Colors.limeAccent,
                                child: ListTile(
                                  title: Text(
                                    "Meal Plan of ${formatDateTimeForMealPlanTitle(meal.creationDate!)}",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
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
                        : noDataWidget("No Meal Plans History"),
                  ),
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

  Widget noDataWidget(String text) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.not_interested, size: 50.w),
          Text(
            text,
            style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }

  Widget getSectionHeading({
    required String heading,
    required VoidCallback onDelete,
  }) {
    return SizedBox(
      height: 40.h,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Text(
            heading,
            style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.bold),
          ),
          Positioned(
            right: 0,
            child: IconButton(
              onPressed: onDelete,
              icon: Icon(Icons.delete, color: Colors.red),
            ),
          ),
        ],
      ),
    );
  }
}
