import 'package:easy_padding/easy_padding.dart';
import 'package:flutter/material.dart';
import 'package:app_ui/app_ui.dart';
import 'package:go_router/go_router.dart';
import 'package:pharmacy_app/features/home/widgets/feature_item.dart';
import 'package:pharmacy_app/features/home/widgets/product_item.dart';
import 'package:sizer/sizer.dart';

class HomeView extends StatelessWidget {
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
                          Assets.images.logo.path,
                          fit: BoxFit.cover,
                          width: 10.w,
                        ).only(right: 2.w),
                        const Texts.heavy(
                          "Catchy",
                          color: Palette.white,
                        ),
                      ],
                    ).only(bottom: 3.h),
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
                              ).only(bottom: 1.h),
                              const Texts.heavy(
                                '\$3.382.00',
                                fontSize: 17,
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              const Texts.medium(
                                'Top Up',
                                fontSize: 14,
                              ).only(right: 3.w),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(7.sp),
                                  color: Colors.black,
                                ),
                                padding: EdgeInsets.all(1.w),
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                  size: 13.sp,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ).only(bottom: 3.h),
                    Hero(
                      tag: "search",
                      child: GestureDetector(
                        onTap: () {
                          context.go("/home/track");
                        },
                        child: CustomInput(
                          active: false,
                          hintText: "Enter track number",
                          icon: Icon(
                            Icons.search,
                            color: Palette.black,
                            size: 20.sp,
                          ),
                          hintColor: Palette.blueLight,
                          borderColor: Palette.primary,
                          backgroundColor: Palette.primary,
                          suffix: Icon(
                            Icons.qr_code_scanner,
                            size: 18.sp,
                            color: Palette.blueLight,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ).only(bottom: 1.h),
            Align(
              alignment: Alignment.centerLeft,
              child: const Texts.heavy(
                "Features",
                fontSize: 16,
              ).symmetric(vertical: 2.h, horizontal: 5.w),
            ),
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
                  ).symmetric(horizontal: 2.w),
                ),
                Expanded(
                  child: FeatureItem(
                    onTap: () {
                      context.go("/home/booking");
                    },
                    text: "Create booking",
                    icon: Icons.add_box,
                  ),
                ),
              ],
            ).symmetric(horizontal: 5.w),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: FeatureItem(
                    onTap: () {},
                    text: "Help Center",
                    icon: Icons.help_center,
                  ),
                ),
                Expanded(
                  child: FeatureItem(
                    onTap: () {},
                    text: "Wallet",
                    icon: Icons.wallet,
                  ).symmetric(horizontal: 2.w),
                ),
                Expanded(
                  child: FeatureItem(
                    onTap: () {},
                    text: "Others",
                    icon: Icons.lock,
                  ),
                ),
              ],
            ).only(bottom: 3.h, right: 5.w, left: 5.w),
            Align(
              alignment: Alignment.centerLeft,
              child: const Texts.heavy(
                "Services and Product",
                fontSize: 16,
              ).only(bottom: 2.h, left: 5.w),
            ),
            ListView(
              padding: EdgeInsets.zero,
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                ProductItem(
                  onTap: () {
                    context.go("/home/product");
                  },
                  text: "MM09132005",
                ).only(bottom: 1.h),
                ProductItem(
                  onTap: () {},
                  text: "MM09132005",
                ).only(bottom: 1.h),
                ProductItem(
                  onTap: () {},
                  text: "MM09132005",
                ).only(bottom: 1.h),
                ProductItem(
                  onTap: () {},
                  text: "MM09132005",
                ).only(bottom: 1.h),
                ProductItem(
                  onTap: () {},
                  text: "MM09132005",
                ).only(bottom: 1.h),
              ],
            ).symmetric(horizontal: 5.w)
          ],
        ),
      ),
    );
  }
}
