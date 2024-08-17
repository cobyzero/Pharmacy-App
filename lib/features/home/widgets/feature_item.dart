import 'package:easy_padding/easy_padding.dart';
import 'package:flutter/material.dart';
import 'package:app_ui/app_ui.dart';
import 'package:sizer/sizer.dart';

class FeatureItem extends StatelessWidget {
  const FeatureItem({
    super.key,
    required this.onTap,
    required this.text,
    required this.icon,
  });
  final Function() onTap;
  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 30.w,
        padding: EdgeInsets.symmetric(vertical: 1.5.h),
        child: Column(
          children: [
            Icon(
              icon,
              size: 25.sp,
              color: Palette.primary,
            ).only(bottom: .5.h),
            Texts.medium(
              text,
              fontSize: 13,
              textOverflow: TextOverflow.fade,
              alignment: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
