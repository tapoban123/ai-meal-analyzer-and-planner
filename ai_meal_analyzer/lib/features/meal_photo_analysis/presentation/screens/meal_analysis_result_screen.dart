import 'dart:io';

import 'package:ai_meal_analyzer/features/meal_photo_analysis/presentation/blocs/ai_img_analyser_bloc/ai_img_analyser_bloc.dart';
import 'package:ai_meal_analyzer/features/meal_photo_analysis/presentation/blocs/ai_img_analyser_bloc/ai_img_analyser_state.dart';
import 'package:ai_meal_analyzer/features/meal_photo_analysis/presentation/widgets/meal_analysis_result_viewer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MealAnalysisResultScreen extends StatelessWidget {
  const MealAnalysisResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Analysis Result"), centerTitle: true),
      body: BlocBuilder<AiImgAnalyserBloc, AiImgAnalyserState>(
        builder: (context, state) {
          if (state.mealDetails != null) {
            final mealDetails = state.mealDetails!;
            return MealAnalysisResultViewer(
              mealDetails: mealDetails,
              image: state.image!,
            );
          }
          return SizedBox.shrink();
        },
      ),
    );
  }
}
