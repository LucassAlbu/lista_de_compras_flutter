import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ButtonDefault extends StatefulWidget {
  final String? hintText;

  final double? fontSize;
  final void Function()? onPressed;
  final Color color;
  final double? width;
  final double? height;
  final double? radius;
  final Color fontColor;
  final Widget? sufixIcon;
  final Widget? prefixIcon;
  final Widget? customHint;
  final Widget? customLoading;
  final Color? borderColor;

  const ButtonDefault({
    super.key,
    this.fontSize,
    required this.onPressed,
    required this.color,
    this.width,
    this.height,
    required this.fontColor,
    this.sufixIcon,
    this.prefixIcon,
    this.customHint,
    this.borderColor,
    this.hintText,
    this.radius,
    this.customLoading,
  });

  @override
  State<ButtonDefault> createState() => _ButtonDefaultState();
}

class _ButtonDefaultState extends State<ButtonDefault> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.height ?? 40.w,
      width: widget.width ?? Get.width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          side: BorderSide(
            color: widget.borderColor ?? widget.color,
          ),
          backgroundColor: widget.color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(widget.radius ?? 40.w),
          ),
        ),
        onPressed: widget.onPressed,
        child: widget.customHint ??
            Row(
              children: [
                Container(
                  child: widget.prefixIcon,
                ),
                Expanded(
                  child: Center(
                    child: widget.customLoading ??
                        Text(
                          widget.hintText ?? '',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: widget.fontColor,
                            fontSize: widget.fontSize ?? 12.sp,
                          ),
                        ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 6),
                  child: Container(
                    child: widget.sufixIcon,
                  ),
                ),
              ],
            ),
      ),
    );
  }
}
