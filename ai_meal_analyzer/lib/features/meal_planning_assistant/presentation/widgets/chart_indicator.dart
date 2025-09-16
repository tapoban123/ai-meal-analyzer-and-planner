import 'package:ai_meal_analyzer/core/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChartIndicator extends StatelessWidget {
  final Color color;
  final String text;

  const ChartIndicator({super.key, required this.color, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      spacing: 8.w,
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(width: 20.w, height: 20.w, color: color),
        Text(text),
      ],
    );
  }
}
