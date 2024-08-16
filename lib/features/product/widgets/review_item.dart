import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:app_ui/app_ui.dart';
import 'package:sizer/sizer.dart';

class ReviewItem extends StatelessWidget {
  const ReviewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 1.h, horizontal: 4.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.sp),
        border: Border.all(
          width: 1,
          color: Palette.white2,
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: Row(
              children: [
                const CircleAvatar(
                  child: Icon(Icons.person),
                ).marginOnly(right: 3.w),
                const Texts.heavy(
                  "Harry Johnson",
                  fontSize: 14,
                  textOverflow: TextOverflow.fade,
                  alignment: TextAlign.center,
                ),
              ],
            ),
          ),
          Row(
            children: [
              Icon(
                Icons.star,
                color: Palette.primary,
                size: 15.sp,
              ).marginOnly(right: 1.w),
              const Texts.roman(
                "4.9",
              ),
            ],
          ),
        ],
      ),
    );
  }
}
