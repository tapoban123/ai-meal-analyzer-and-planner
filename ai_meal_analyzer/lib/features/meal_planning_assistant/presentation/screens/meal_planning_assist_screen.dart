import 'package:ai_meal_analyzer/core/commons/home_view/presentation/widgets/custom_button.dart';
import 'package:ai_meal_analyzer/core/utils/constants.dart';
import 'package:ai_meal_analyzer/features/meal_planning_assistant/domain/entities/user_meal_details.dart';
import 'package:ai_meal_analyzer/features/meal_planning_assistant/presentation/blocs/meal_plan_generator_bloc/meal_plan_generator_bloc.dart';
import 'package:ai_meal_analyzer/features/meal_planning_assistant/presentation/blocs/meal_plan_generator_bloc/meal_plan_generator_events.dart';
import 'package:ai_meal_analyzer/features/meal_planning_assistant/presentation/blocs/meal_plan_generator_bloc/meal_plan_generator_states.dart';
import 'package:ai_meal_analyzer/features/meal_planning_assistant/presentation/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

enum MealTypes { ALL, BREAKFAST, LUNCH, DINNER, SNACKS }

class MealPlanningAssistScreen extends StatefulWidget {
  const MealPlanningAssistScreen({super.key});

  @override
  State<MealPlanningAssistScreen> createState() =>
      _MealPlanningAssistScreenState();
}

class _MealPlanningAssistScreenState extends State<MealPlanningAssistScreen> {
  final TextEditingController preferencesController = TextEditingController(
    text: "Non-vegetarian",
  );
  final TextEditingController restrictionsController = TextEditingController(
    text: "Gluten-free, No peanuts",
  );
  final TextEditingController caloriesController = TextEditingController(
    text: "2000",
  );
  final TextEditingController macroGoalsController = TextEditingController(
    text: "Protein: 100g, Carbs: 250g, Fats: 60g",
  );
  final TextEditingController mealTypeController = TextEditingController(
    text: MealTypes.ALL.name,
  );
  MealTypes mealType = MealTypes.ALL;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Meal Planner Assistant"), centerTitle: true),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.w),
        child: BlocListener<MealPlanGenerationBloc, MealPlanGenerationStates>(
          listener: (context, state) {
            if (state.status == MealPlanGeneratorStatus.loading) {
              showProgressLoaderDialog(context);
            } else if (state.status == MealPlanGeneratorStatus.success) {
              Navigator.pop(context);
            }
          },
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
                controller: mealTypeController,
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
                dropdownMenuEntries: List.generate(
                  MealTypes.values.length,
                  (index) => DropdownMenuEntry(
                    value: MealTypes.values[index].name,
                    label: MealTypes.values[index].name,
                  ),
                ),
              ),
              30.verticalSpace,
              CustomButton(
                onTap: () {
                  final mealDetails = UserMealDetails(
                    preferences: preferencesController.text.trim(),
                    restrictions: restrictionsController.text.trim(),
                    macroGoals: macroGoalsController.text.trim(),
                    calories: double.parse(caloriesController.text.trim()),
                    mealType: mealTypeController.text.trim(),
                  );

                  context.read<MealPlanGenerationBloc>().add(
                    GenerateMealPlanEvent(mealDetails: mealDetails),
                  );
                },
                bgColor: Colors.teal,
                buttonText: "Generate Meal Plans",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
