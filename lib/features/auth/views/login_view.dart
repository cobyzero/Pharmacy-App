import 'package:app_ui/app_ui.dart';
import 'package:easy_padding/easy_padding.dart';
import 'package:flutter/material.dart';
import 'package:pharmacy_app/features/auth/widgets/input_column.dart';
import 'package:sizer/sizer.dart';

class LoginView extends StatelessWidget {
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
            ).only(bottom: 3.h),
            Container(
              width: double.infinity,
              height: 1,
              color: Palette.white2,
            ).only(bottom: 1.h),
            Align(
              alignment: Alignment.center,
              child: const Texts.roman(
                "Or Sign In With",
              ).only(bottom: 3.h),
            ),
            CustomButtonOutline(
              text: "Sign In with Google",
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
              ).only(bottom: 2.h),
              const Texts.roman(
                "Get great experience with tracky",
              ).only(bottom: 5.h),
              const InputColumn(
                title: "Phone Number",
                hintText: "Enter your number",
                icon: Icons.phone_outlined,
              ).only(bottom: 5.h),
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
