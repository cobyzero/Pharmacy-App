import 'package:easy_padding/extentions/padding_extentions.dart';
import 'package:flutter/material.dart';
import 'package:app_ui/app_ui.dart';
import 'package:sizer/sizer.dart';

class InputColumn extends StatelessWidget {
  const InputColumn({
    super.key,
    required this.title,
    required this.hintText,
    required this.icon,
    this.controller,
  });
  final String title;
  final String hintText;
  final IconData icon;
  final TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Texts.heavy(
          title,
          fontSize: 14,
        ).only(bottom: 1.3.h),
        CustomInput(
          hintText: hintText,
          icon: Icon(
            icon,
            size: 20.sp,
          ),
          controller: controller,
        ),
      ],
    );
  }
}
