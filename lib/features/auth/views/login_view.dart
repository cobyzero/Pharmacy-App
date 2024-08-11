import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pharmacy_app/core/utils/palette.dart';
import 'package:pharmacy_app/core/utils/texts.dart';
import 'package:pharmacy_app/core/widgets/custom_button.dart';
import 'package:pharmacy_app/core/widgets/custom_button_outline.dart';
import 'package:pharmacy_app/features/auth/controllers/auth_controller.dart';
import 'package:pharmacy_app/features/auth/widgets/input_column.dart';
import 'package:sizer/sizer.dart';

class LoginView extends GetView<AuthController> {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustomButton(
              text: "Sign In",
              onPressed: () {},
            ).marginOnly(bottom: 3.h),
            Container(
              width: double.infinity,
              height: 1,
              color: Palette.white2,
            ).marginOnly(bottom: 1.h),
            Align(
              alignment: Alignment.center,
              child: const Texts.roman(
                "Or Sign In With",
              ).marginOnly(bottom: 3.h),
            ),
            CustomButtonOutline(
              text: "Sign In with Google",
              onPressed: () {},
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
                "Shipping and Track Anytime",
              ).marginOnly(bottom: 2.h),
              const Texts.roman(
                "Get great experience with tracky",
              ).marginOnly(bottom: 5.h),
              const InputColumn(
                title: "Phone Number",
                hintText: "Enter your number",
                icon: Icons.phone_outlined,
              ).marginOnly(bottom: 5.h),
              const InputColumn(
                title: "Password",
                hintText: "Enter your password",
                icon: Icons.password_outlined,
              ),
            ],
          ).marginSymmetric(horizontal: 5.w),
        ),
      ),
    );
  }
}
