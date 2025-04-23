import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../app_colors.dart';

class CustomInputField extends StatelessWidget {
  final String title;
  final String hint;
  final TextEditingController controller;
  final String? Function(String?)? validators;
  final int? maxLines;
  final int? maxLength;
  final List<TextInputFormatter>? inputFormatters;
  final bool showCounterText;

  const CustomInputField({
    super.key,
    required this.title,
    required this.hint,
    required this.controller,
    this.validators,
    this.maxLines,
    this.maxLength,
    this.inputFormatters,
    this.showCounterText = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 8.h),
        TextFormField(
          controller: controller,
          style: const TextStyle(color: Colors.black),
          maxLines: maxLines ?? 1,
          maxLength: maxLength,
          validator: validators,
          inputFormatters: inputFormatters,
          decoration: InputDecoration(
            filled: true,
            fillColor: AppColors.greyCardBg,
            hintText: hint,
            hintStyle: TextStyle(
              color: AppColors.greyText,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.r),
              borderSide: BorderSide.none,
            ),
            contentPadding: const EdgeInsets.symmetric(
              vertical: 15.0,
              horizontal: 20.0,
            ),
            counterText: showCounterText ? null : '',
          ),
        ),
      ],
    );
  }
}
