import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pharmacy_app/core/utils/const.dart';
import 'package:pharmacy_app/core/utils/palette.dart';
import 'package:pharmacy_app/core/utils/texts.dart';
import 'package:pharmacy_app/core/widgets/custom_input.dart';
import 'package:pharmacy_app/features/home/controllers/home_controller.dart';
import 'package:pharmacy_app/features/home/widgets/feature_item.dart';
import 'package:pharmacy_app/features/home/widgets/product_item.dart';
import 'package:sizer/sizer.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 3.h, horizontal: 5.w),
              color: Palette.black,
              child: SafeArea(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          "${imageAsset}logo.png",
                          fit: BoxFit.cover,
                          width: 10.w,
                        ).marginOnly(right: 2.w),
                        const Texts.heavy(
                          "Catchy",
                          color: Palette.white,
                        ),
                      ],
                    ).marginOnly(bottom: 3.h),
                    Container(
                      padding: EdgeInsets.symmetric(
                        vertical: 2.h,
                        horizontal: 5.w,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12.sp),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Texts.roman(
                                'My Balance',
                              ).marginOnly(bottom: 1.h),
                              const Texts.heavy(
                                '\$3.382.00',
                                fontSize: 14,
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              const Texts.medium(
                                'Top Up',
                                fontSize: 11,
                              ).marginOnly(right: 3.w),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(7.sp),
                                  color: Colors.black,
                                ),
                                padding: EdgeInsets.all(1.w),
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                  size: 11.sp,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ).marginOnly(bottom: 3.h),
                    GestureDetector(
                      onTap: () {
                        Get.toNamed("/track");
                      },
                      child: CustomInput(
                        active: false,
                        hintText: "Enter track number",
                        icon: Icons.search,
                        hintColor: Palette.blueLight,
                        borderColor: Palette.primary,
                        backgroundColor: Palette.primary,
                        suffix: Icon(
                          Icons.qr_code_scanner,
                          size: 17.sp,
                          color: Palette.blueLight,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ).marginOnly(bottom: 1.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Texts.heavy(
                  "Categories",
                  fontSize: 13,
                ),
                TextButton(
                  onPressed: () {
                    Get.toNamed("/categories");
                  },
                  child: const Texts.roman(
                    "View all",
                  ),
                ),
              ],
            ).marginSymmetric(vertical: 2.h, horizontal: 5.w),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: FeatureItem(
                    onTap: () {},
                    text: "Check Rates",
                    icon: Icons.monetization_on,
                  ),
                ),
                Expanded(
                  child: FeatureItem(
                    onTap: () {},
                    text: "Nearby Drop",
                    icon: Icons.map,
                  ).marginSymmetric(horizontal: 2.w),
                ),
                Expanded(
                  child: FeatureItem(
                    onTap: () {},
                    text: "Order",
                    icon: Icons.lock,
                  ),
                ),
              ],
            ).marginOnly(bottom: 3.h, right: 5.w, left: 5.w),
            Align(
              alignment: Alignment.centerLeft,
              child: const Texts.heavy(
                "Services and Product",
              ).marginOnly(bottom: 2.h, left: 5.w),
            ),
            ListView(
              padding: EdgeInsets.zero,
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                ProductItem(
                  onTap: () {
                    Get.toNamed("/product");
                  },
                  text: "MM09132005",
                ).marginOnly(bottom: 2.h),
                ProductItem(
                  onTap: () {},
                  text: "MM09132005",
                ).marginOnly(bottom: 2.h),
                ProductItem(
                  onTap: () {},
                  text: "MM09132005",
                ).marginOnly(bottom: 2.h),
                ProductItem(
                  onTap: () {},
                  text: "MM09132005",
                ).marginOnly(bottom: 2.h),
                ProductItem(
                  onTap: () {},
                  text: "MM09132005",
                ).marginOnly(bottom: 2.h),
              ],
            ).marginSymmetric(horizontal: 5.w)
          ],
        ),
      ),
    );
  }
}
