import 'package:easy_padding/easy_padding.dart';
import 'package:flutter/material.dart';
import 'package:app_ui/app_ui.dart';
import 'package:sizer/sizer.dart';

class StatusItem extends StatelessWidget {
  const StatusItem({
    super.key,
    required this.title,
    required this.subtitle,
    required this.active,
  });
  final String title;
  final String subtitle;
  final bool active;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.radio_button_checked,
          color: active ? Palette.orange : Palette.gray,
        ).only(right: 3.w),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Texts.heavy(
              title,
              fontSize: 14,
              color: active ? Palette.black : Palette.gray,
            ).only(bottom: 1.5.h),
            Texts.roman(
              subtitle,
              fontSize: 13,
            ),
          ],
        ),
      ],
    );
  }
}
