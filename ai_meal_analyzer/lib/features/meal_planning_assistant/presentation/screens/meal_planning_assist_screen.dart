import 'package:ai_meal_analyzer/core/commons/home_view/presentation/widgets/custom_button.dart';
import 'package:ai_meal_analyzer/core/utils/constants.dart';
import 'package:ai_meal_analyzer/features/meal_planning_assistant/presentation/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

enum MealTypes { ALL, BREAKFAST, LUNCH, DINNER, SNACKS }

class MealPlanningAssistScreen extends StatefulWidget {
  const MealPlanningAssistScreen({super.key});

  @override
  State<MealPlanningAssistScreen> createState() =>
      _MealPlanningAssistScreenState();
}

class _MealPlanningAssistScreenState extends State<MealPlanningAssistScreen> {
  final TextEditingController preferencesController = TextEditingController();
  final TextEditingController restrictionsController = TextEditingController();
  final TextEditingController caloriesController = TextEditingController();
  final TextEditingController macroGoalsController = TextEditingController();
  MealTypes mealType = MealTypes.ALL;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Meal Planner Assistant"), centerTitle: true),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.w),
        child: Column(
          spacing: 10.h,
          children: [
            CustomTextField(
              textController: preferencesController,
              keyboardType: TextInputType.text,
              hintText: "Dietary Preferences",
              maxLines: 2,
            ),
            CustomTextField(
              textController: restrictionsController,
              keyboardType: TextInputType.text,
              hintText: "Restrictions",
              maxLines: 2,
            ),
            CustomTextField(
              textController: caloriesController,
              keyboardType: TextInputType.number,
              hintText: "Calories",
              maxLines: 1,
            ),
            CustomTextField(
              textController: macroGoalsController,
              keyboardType: TextInputType.text,
              hintText: "Macro Goals",
              maxLines: 2,
            ),
            DropdownMenu(
              width: double.infinity,
              initialSelection: "All",
              menuStyle: MenuStyle(
                backgroundColor: WidgetStatePropertyAll(Colors.white),
                fixedSize: WidgetStatePropertyAll(
                  Size(getScreenWidth(context), 260.h),
                ),
              ),
              onSelected: (type) {
                switch (type) {
                  case "All":
                    mealType = MealTypes.ALL;
                    break;
                }
              },
              inputDecorationTheme: InputDecorationTheme(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.r),
                  borderSide: BorderSide(color: Color(0xFFD3D3D3)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.r),
                  borderSide: BorderSide(width: 2),
                ),
              ),
              dropdownMenuEntries: [
                DropdownMenuEntry(value: "All", label: "All"),
                DropdownMenuEntry(value: "Breakfast", label: "Breakfast"),
                DropdownMenuEntry(value: "Lunch", label: "Lunch"),
                DropdownMenuEntry(value: "Snacks", label: "Snacks"),
                DropdownMenuEntry(value: "Dinner", label: "Dinner"),
              ],
            ),
            30.verticalSpace,
            CustomButton(
              onTap: () {},
              bgColor: Colors.teal,
              buttonText: "Generate Meal Plans",
            ),
          ],
        ),
      ),
    );
  }
}
