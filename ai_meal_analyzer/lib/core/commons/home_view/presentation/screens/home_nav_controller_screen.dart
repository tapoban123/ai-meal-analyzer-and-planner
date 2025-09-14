import 'package:ai_meal_analyzer/core/commons/home_view/presentation/blocs/bottom_nav_controller_cubit.dart';
import 'package:ai_meal_analyzer/features/history_and_analytics/presentation/screens/history_and_analytics_screen.dart';
import 'package:ai_meal_analyzer/features/meal_photo_analysis/presentation/screens/meal_photo_analysis_screen.dart';
import 'package:ai_meal_analyzer/features/meal_planning_assistant/presentation/screens/meal_planning_assist_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeNavControllerScreen extends StatelessWidget {
  const HomeNavControllerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Widget> screens = [
      MealPhotoAnalysisScreen(),
      MealPlanningAssistScreen(),
      HistoryAndAnalyticsScreen(),
    ];

    return Scaffold(
      bottomNavigationBar: _HomeBottomNavBar(),
      body: BlocBuilder<BottomNavControllerCubit, int>(
        builder: (context, currentTab) =>
            IndexedStack(index: currentTab, children: screens),
      ),
    );
  }
}

class _HomeBottomNavBar extends StatelessWidget {
  const _HomeBottomNavBar({super.key});

  void onIconTap(BuildContext context, int tabNum) {
    context.read<BottomNavControllerCubit>().changeTab(tabNum);
  }

  @override
  Widget build(BuildContext context) {
    final List<IconData> icons = [
      Icons.photo_camera,
      Icons.assistant,
      Icons.analytics_rounded,
    ];

    return Container(
      height: 90.h,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(color: Colors.black12, spreadRadius: 2, blurRadius: 20),
        ],
      ),
      child: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(icons.length, (index) {
            final bool isIconSelected =
                context.watch<BottomNavControllerCubit>().state == index;

            return IconButton(
              onPressed: () => onIconTap(context, index),
              style: IconButton.styleFrom(highlightColor: Colors.white),
              icon: Icon(
                icons[index],
                size: isIconSelected ? 30.w : 24.w,
                color: isIconSelected ? Colors.black : Colors.black45,
              ),
            );
          }),
        ),
      ),
    );
  }
}
