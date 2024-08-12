import 'package:flutter/material.dart';
import 'package:pharmacy_app/core/utils/palette.dart';
import 'package:sizer/sizer.dart';

class CustomInput extends StatefulWidget {
  const CustomInput({
    super.key,
    required this.hintText,
    required this.icon,
    this.controller,
    this.suffix,
    this.backgroundColor,
    this.borderColor,
    this.hintColor,
    this.active = true,
  });
  final String hintText;
  final IconData icon;
  final TextEditingController? controller;
  final Widget? suffix;
  final Color? backgroundColor;
  final Color? borderColor;
  final Color? hintColor;
  final bool active;
  @override
  State<CustomInput> createState() => _CustomInputState();
}

class _CustomInputState extends State<CustomInput> {
  final focus = FocusNode();
  bool hasFocus = false;
  @override
  void initState() {
    focus.addListener(
      () {
        setState(() {
          hasFocus = focus.hasFocus;
        });
      },
    );
    super.initState();
  }

  @override
  void dispose() {
    focus.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      enabled: widget.active,
      controller: widget.controller,
      focusNode: focus,
      decoration: InputDecoration(
        filled: true,
        fillColor: widget.backgroundColor ?? Palette.white,
        suffixIcon: widget.suffix,
        prefixIcon: Icon(
          widget.icon,
          size: 20.sp,
          color: focus.hasFocus
              ? widget.hintColor ?? Palette.primary
              : widget.hintColor ?? Palette.blueLight,
        ),
        hintText: widget.hintText,
        hintStyle: TextStyle(
          color:
              focus.hasFocus ? Palette.black : widget.hintColor ?? Palette.gray,
        ),
        disabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: widget.borderColor ?? Palette.white2),
          borderRadius: BorderRadius.circular(12.sp),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: widget.borderColor ?? Palette.white2),
          borderRadius: BorderRadius.circular(12.sp),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: widget.borderColor ?? Palette.black),
          borderRadius: BorderRadius.circular(12.sp),
        ),
      ),
    );
  }
}
