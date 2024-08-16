import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:app_ui/app_ui.dart';
import 'package:pharmacy_app/features/auth/controllers/auth_controller.dart';
import 'package:pharmacy_app/features/auth/widgets/input_verification.dart';
import 'package:sizer/sizer.dart';

class VerificationCodeView extends GetView<AuthController> {
  const VerificationCodeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustomButton(
              text: "Submit",
              onPressed: () {
                Get.bottomSheet(
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        const Texts.heavy(
                          "Register Successfully",
                        ).marginOnly(bottom: 4.h),
                        const Texts.roman(
                          "Congratulation! your account already created. Please login to get amazing experience.",
                          alignment: TextAlign.center,
                        ).marginOnly(bottom: 3.h),
                        CustomButton(
                          text: "Go to Homepage",
                          onPressed: () {
                            Get.toNamed("/navigator");
                          },
                        ),
                      ],
                    ).marginSymmetric(vertical: 3.h, horizontal: 5.w),
                  ),
                  backgroundColor: Palette.white,
                  isDismissible: false,
                );
              },
            ).marginOnly(bottom: 1.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Texts.roman(
                  "Didn´t receive the code?",
                ),
                TextButton(
                  onPressed: () {},
                  child: const Texts.roman(
                    "Resend",
                    color: Palette.black,
                  ),
                ),
              ],
            ),
          ],
        ).marginSymmetric(horizontal: 5.w).marginOnly(bottom: 4.h),
      ),
      appBar: AppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Texts.heavy(
                "Verification Code",
              ).marginOnly(bottom: 2.h),
              const Texts.roman(
                "We have sent the code verification to your number",
                height: 1.8,
              ).marginOnly(bottom: 1.h),
              const Texts.roman(
                "+01 65841542265",
                color: Palette.black,
              ).marginOnly(bottom: 5.h),
              const InputVerification().marginOnly(bottom: 3.h),
              const Align(
                alignment: Alignment.center,
                child: Texts.heavy(
                  "02:39",
                  fontSize: 15,
                ),
              ),
            ],
          ).marginSymmetric(horizontal: 5.w),
        ),
      ),
    );
  }
}
