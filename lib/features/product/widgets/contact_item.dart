import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pharmacy_app/core/utils/palette.dart';
import 'package:pharmacy_app/core/utils/texts.dart';
import 'package:sizer/sizer.dart';

class ContactItem extends StatelessWidget {
  const ContactItem({super.key});

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
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Texts.heavy(
                      "Harry Johnson",
                      fontSize: 10,
                      textOverflow: TextOverflow.fade,
                      alignment: TextAlign.center,
                    ).marginOnly(bottom: .5.h),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Icon(
                          Icons.star,
                          color: Palette.primary,
                          size: 12.sp,
                        ).marginOnly(right: 1.w),
                        const Texts.roman(
                          "4.9",
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.phone,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.message,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
