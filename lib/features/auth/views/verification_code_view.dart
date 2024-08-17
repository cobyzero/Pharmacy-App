import 'package:easy_padding/extentions/padding_extentions.dart';
import 'package:flutter/material.dart';
import 'package:app_ui/app_ui.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:pharmacy_app/features/auth/widgets/input_verification.dart';
import 'package:pharmacy_app/features/onboarding/cubit/onboarding_cubit.dart';
import 'package:sizer/sizer.dart';

class VerificationCodeView extends StatelessWidget {
  const VerificationCodeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Builder(builder: (contexts) {
        return SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Texts.heavy(
                  "Verification Code",
                  fontSize: 16,
                ).only(bottom: 2.h, top: 4.h),
                const Texts.roman(
                  "We have sent the code verification to your number",
                  height: 1.8,
                ).only(bottom: 1.h),
                const Texts.roman(
                  "+01 65841542265",
                  color: Palette.black,
                ).only(bottom: 5.h),
                const InputVerification().only(bottom: 3.h),
                const Align(
                  alignment: Alignment.center,
                  child: Texts.heavy(
                    "02:39",
                    fontSize: 15,
                  ),
                ).only(bottom: 40.h),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CustomButton(
                      text: "Submit",
                      onPressed: () {
                        showMaterialModalBottomSheet(
                          context: context,
                          isDismissible: false,
                          shape: ContinuousRectangleBorder(
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(30.sp),
                            ),
                          ),
                          builder: (context) {
                            return SingleChildScrollView(
                              child: Column(
                                children: [
                                  const Texts.heavy(
                                    "Register Successfully",
                                  ).only(bottom: 4.h),
                                  const Texts.roman(
                                    "Congratulation! your account already created. Please login to get amazing experience.",
                                    alignment: TextAlign.center,
                                  ).only(bottom: 3.h),
                                  CustomButton(
                                    text: "Go to Homepage",
                                    onPressed: () {
                                      context.read<OnboardingCubit>().close();
                                      context.go("/home");
                                    },
                                  ),
                                ],
                              ).symmetric(vertical: 3.h, horizontal: 5.w),
                            );
                          },
                        );
                      },
                    ).only(bottom: 1.h),
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
                ),
              ],
            ).symmetric(horizontal: 5.w),
          ),
        );
      }),
    );
  }
}
