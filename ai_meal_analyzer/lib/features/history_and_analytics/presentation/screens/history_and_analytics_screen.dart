import 'package:ai_meal_analyzer/features/history_and_analytics/presentation/blocs/history_and_analytics_bloc/history_and_analytics_bloc.dart';
import 'package:ai_meal_analyzer/features/history_and_analytics/presentation/blocs/history_and_analytics_bloc/history_and_analytics_events.dart';
import 'package:ai_meal_analyzer/features/history_and_analytics/presentation/blocs/history_and_analytics_bloc/history_and_analytics_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HistoryAndAnalyticsScreen extends StatefulWidget {
  const HistoryAndAnalyticsScreen({super.key});

  @override
  State<HistoryAndAnalyticsScreen> createState() =>
      _HistoryAndAnalyticsScreenState();
}

class _HistoryAndAnalyticsScreenState extends State<HistoryAndAnalyticsScreen> {
  @override
  void initState() {
    context.read<HistoryAndAnalyticsBloc>().add(
      FetchAllMealAnalysisDataEvent(),
    );
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
                  child: state.mealAnalysisData != null && state.mealAnalysisData!.isNotEmpty
                      ? ListView.builder(
                          itemCount: state.mealAnalysisData!.length,
                          itemBuilder: (context, index) {
                            final mealData = state.mealAnalysisData![index];

                            return ListTile(title: Text(mealData.mealName));
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
                  child: ListView.builder(
                    itemCount: 20,
                    padding: EdgeInsets.only(bottom: 10.w),
                    itemBuilder: (context, index) => Text("Hello $index"),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
