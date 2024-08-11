import 'package:flutter/material.dart';
import 'package:pharmacy_app/core/utils/palette.dart';
import 'package:sizer/sizer.dart';

class CustomInput extends StatefulWidget {
  const CustomInput({
    super.key,
    required this.hintText,
    required this.icon,
    this.controller,
  });
  final String hintText;
  final IconData icon;
  final TextEditingController? controller;
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
      controller: widget.controller,
      focusNode: focus,
      decoration: InputDecoration(
        filled: true,
        fillColor: Palette.white,
        prefixIcon: Icon(
          widget.icon,
          size: 20.sp,
          color: focus.hasFocus ? Palette.primary : Palette.gray,
        ),
        hintText: widget.hintText,
        hintStyle: TextStyle(
          color: focus.hasFocus ? Palette.black : Palette.gray,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Palette.white2),
          borderRadius: BorderRadius.circular(12.sp),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Palette.black),
          borderRadius: BorderRadius.circular(12.sp),
        ),
      ),
    );
  }
}
