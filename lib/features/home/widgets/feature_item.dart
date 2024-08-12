import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pharmacy_app/core/utils/palette.dart';
import 'package:pharmacy_app/core/utils/texts.dart';
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
        decoration: BoxDecoration(
          color: Palette.white,
          borderRadius: BorderRadius.circular(12.sp),
          border: Border.all(
            width: 1,
            color: Palette.white2,
          ),
        ),
        child: Column(
          children: [
            Icon(
              icon,
              size: 25.sp,
              color: Palette.primary,
            ).marginOnly(bottom: .5.h),
            Texts.heavy(
              text,
              fontSize: 10,
              textOverflow: TextOverflow.fade,
              alignment: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
