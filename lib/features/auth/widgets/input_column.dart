import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pharmacy_app/core/utils/texts.dart';
import 'package:pharmacy_app/core/widgets/custom_input.dart';
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
        ).marginOnly(bottom: 1.3.h),
        CustomInput(
          hintText: hintText,
          icon: icon,
          controller: controller,
        ),
      ],
    );
  }
}
