import 'package:ai_meal_analyzer/core/utils/contants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onTap;
  final String buttonText;
  final Color bgColor;

  const CustomButton({
    super.key,
    required this.onTap,
    required this.bgColor,
    required this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        minimumSize: Size(getScreenWidth(context), 60.h),
        backgroundColor: bgColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.r),
        ),
      ),
      child: Text(
        buttonText,
        style: TextStyle(color: Colors.white, fontSize: 16.sp),
      ),
    );
  }
}
