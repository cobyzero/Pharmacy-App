import 'package:easy_padding/extentions/padding_extentions.dart';
import 'package:flutter/material.dart';
import 'package:app_ui/app_ui.dart';
import 'package:sizer/sizer.dart';

class CategoriesView extends StatelessWidget {
  const CategoriesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Texts.heavy(
          "Categories",
          fontSize: 14,
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: GridView.count(
          padding: EdgeInsets.all(5.w),
          childAspectRatio: 8 / 2,
          crossAxisCount: 2,
          mainAxisSpacing: 4.h,
          crossAxisSpacing: 10.w,
          children: List.generate(10, (e) {
            return "0";
          }).map(
            (e) {
              return GestureDetector(
                onTap: () {},
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.sp),
                    border: Border.all(
                      width: 1,
                      color: Palette.white2,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.phone,
                        color: Palette.primary,
                        size: 17.sp,
                      ).only(right: 2.w),
                      const Texts.medium(
                        "App Guide",
                        fontSize: 11,
                      ),
                    ],
                  ),
                ),
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
