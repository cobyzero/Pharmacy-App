import 'package:flutter/material.dart';
import 'package:app_ui/src/utils/utils.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class CustomInput extends StatelessWidget {
  const CustomInput({
    super.key,
    required this.hintText,
    this.icon,
    this.controller,
    this.suffix,
    this.backgroundColor,
    this.borderColor,
    this.hintColor,
    this.active = true,
    this.maxLines,
  });
  final String hintText;
  final Widget? icon;
  final TextEditingController? controller;
  final Widget? suffix;
  final Color? backgroundColor;
  final Color? borderColor;
  final Color? hintColor;
  final bool active;
  final int? maxLines;
  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: TextFormField(
        enabled: active,
        controller: controller,
        maxLines: maxLines,
        decoration: InputDecoration(
          filled: true,
          fillColor: backgroundColor ?? Palette.white,
          prefixIcon: icon,
          suffixIcon: suffix,
          hintText: hintText,
          hintStyle: GoogleFonts.poppins().copyWith(
            color: hintColor ?? Palette.gray,
          ),
          disabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: borderColor ?? Palette.white2),
            borderRadius: BorderRadius.circular(12.sp),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: borderColor ?? Palette.white2),
            borderRadius: BorderRadius.circular(12.sp),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: borderColor ?? Palette.black),
            borderRadius: BorderRadius.circular(12.sp),
          ),
        ),
      ),
    );
  }
}
