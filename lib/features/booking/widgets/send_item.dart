import 'package:easy_padding/easy_padding.dart';
import 'package:flutter/material.dart';
import 'package:app_ui/app_ui.dart';
import 'package:sizer/sizer.dart';

class SendItem extends StatelessWidget {
  const SendItem({
    super.key,
    required this.onTap,
    required this.text,
  });
  final Function() onTap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
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
                  Container(
                    padding: EdgeInsets.all(3.w),
                    decoration: BoxDecoration(
                        color: Palette.pink,
                        borderRadius: BorderRadius.circular(10.sp)),
                    child: Icon(
                      Icons.inventory,
                      size: 20.sp,
                      color: Palette.primary,
                    ),
                  ).only(right: 3.w),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Texts.heavy(
                        text,
                        fontSize: 14,
                        textOverflow: TextOverflow.fade,
                        alignment: TextAlign.center,
                      ).only(bottom: .5.h),
                      const Texts.roman(
                        "1 - 2 Days",
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Texts.medium(
              '\$42.00',
            ),
          ],
        ),
      ),
    );
  }
}
