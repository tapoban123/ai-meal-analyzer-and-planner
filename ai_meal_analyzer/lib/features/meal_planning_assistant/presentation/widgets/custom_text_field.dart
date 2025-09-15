import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextField extends StatefulWidget {
  final TextEditingController textController;
  final String hintText;
  final int maxLines;
  final TextInputType keyboardType;

  const CustomTextField({
    super.key,
    required this.textController,
    required this.keyboardType,
    required this.hintText,
    required this.maxLines,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  final FocusNode _focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      focusNode: _focusNode,
      controller: widget.textController,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6.r),
          borderSide: BorderSide(color: Color(0xFFD3D3D3)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6.r),
          borderSide: BorderSide(width: 2)
        ),
        hintText: widget.hintText,
        hintStyle: TextStyle(color: Color(0xFF848884)),
      ),
      maxLines: widget.maxLines,
      keyboardType: widget.keyboardType,
      textCapitalization: TextCapitalization.sentences,
      onTapUpOutside: (event) {
        _focusNode.unfocus();
      },
      // expands: true,
    );
  }
}
