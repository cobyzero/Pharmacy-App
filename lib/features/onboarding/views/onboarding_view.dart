import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pharmacy_app/core/utils/const.dart';
import 'package:pharmacy_app/core/utils/palette.dart';
import 'package:pharmacy_app/core/utils/texts.dart';
import 'package:pharmacy_app/core/widgets/custom_button.dart';
import 'package:pharmacy_app/core/widgets/custom_button_outline.dart';
import 'package:pharmacy_app/features/onboarding/controllers/onboarding_controller.dart';
import 'package:sizer/sizer.dart';

class OnboardingView extends GetView<OnboardingController> {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageView(
                physics: const NeverScrollableScrollPhysics(),
                controller: controller.pageController,
                children: OnboardingController.onboardings
                    .map(
                      (e) => Column(
                        children: [
                          Image.asset(
                            "$imageAsset${e.image}",
                            width: 100.w,
                            fit: BoxFit.cover,
                          ).marginOnly(bottom: 3.h),
                          Texts.heavy(e.title).marginOnly(bottom: 2.h),
                          Texts.roman(
                            e.description,
                            color: Palette.gray,
                            fontSize: 10,
                            alignment: TextAlign.center,
                            padding: EdgeInsets.symmetric(
                              horizontal: 10.w,
                            ),
                            height: 1.8,
                          ),
                        ],
                      ),
                    )
                    .toList(),
              ),
            ),
            Obx(() {
              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: OnboardingController.onboardings
                    .map(
                      (e) => Container(
                        margin: EdgeInsets.symmetric(horizontal: 1.w),
                        width: 10,
                        height: 10,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: e.index == controller.onboardingActive()
                                ? Palette.black
                                : Palette.gray),
                      ),
                    )
                    .toList(),
              );
            }),
            CustomButton(
              text: "Create Account",
              onPressed: () {
                Get.toNamed("/register");
              },
            ).marginOnly(left: 7.w, right: 7.w, top: 2.h, bottom: 1.h),
            CustomButtonOutline(
              text: "Sign In as Guest",
              onPressed: () {
                Get.toNamed("/login");
              },
            ).marginSymmetric(horizontal: 7.w).marginOnly(bottom: 2.h),
          ],
        ),
      ),
    );
  }
}
