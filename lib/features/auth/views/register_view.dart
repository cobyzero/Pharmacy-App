import 'package:easy_padding/extentions/padding_extentions.dart';
import 'package:flutter/material.dart';
import 'package:app_ui/app_ui.dart';
import 'package:go_router/go_router.dart';
import 'package:pharmacy_app/features/auth/widgets/input_column.dart';
import 'package:sizer/sizer.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustomButton(
              text: "Sign Up",
              onPressed: () {
                context.go("/onboarding/register/verification");
              },
            ),
            Align(
              alignment: Alignment.center,
              child: const Texts.roman(
                "Or Sign Up With",
              ).symmetric(vertical: 2.h),
            ),
            CustomButtonOutline(
              text: "Sign Up with Google",
              onPressed: () {},
            ),
          ],
        ).symmetric(horizontal: 5.w).only(bottom: 4.h),
      ),
      appBar: AppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Texts.heavy(
                "Shipping and Track Anytime",
                fontSize: 16,
              ).only(bottom: 2.h, top: 3.h),
              const Texts.roman(
                "Get great experience with tracky",
              ).only(bottom: 5.h),
              const InputColumn(
                title: "Full Name",
                hintText: "Enter your name",
                icon: Icons.person_outline,
              ).only(bottom: 2.h),
              const InputColumn(
                title: "Phone Number",
                hintText: "Enter your number",
                icon: Icons.phone_outlined,
              ).only(bottom: 2.h),
              const InputColumn(
                title: "Password",
                hintText: "Enter your password",
                icon: Icons.password_outlined,
              ),
            ],
          ).symmetric(horizontal: 5.w),
        ),
      ),
    );
  }
}
