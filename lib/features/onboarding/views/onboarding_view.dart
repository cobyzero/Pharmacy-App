import 'package:easy_padding/easy_padding.dart';
import 'package:flutter/material.dart';
import 'package:app_ui/app_ui.dart';
import 'package:go_router/go_router.dart';
import 'package:pharmacy_app/features/onboarding/cubit/onboarding_cubit.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OnboardingView extends StatelessWidget {
  final PageController _pageController = PageController();

  OnboardingView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: BlocConsumer<OnboardingCubit, OnboardingState>(
        listener: (context, state) {
          _pageController.animateToPage(
            state.onboardingActive,
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
          );
        },
        builder: (context, state) {
          return Column(
            children: [
              Expanded(
                child: PageView(
                  physics: const NeverScrollableScrollPhysics(),
                  controller: _pageController,
                  children: state.onboardings
                      .map(
                        (e) => Column(
                          children: [
                            Image.asset(
                              e.image,
                              width: 100.w,
                              fit: BoxFit.cover,
                            ).only(bottom: 3.h),
                            Texts.heavy(e.title).only(bottom: 2.h),
                            Texts.roman(
                              e.description,
                              color: Palette.gray,
                              fontSize: 14,
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: state.onboardings
                    .map(
                      (e) => Container(
                        margin: EdgeInsets.symmetric(horizontal: 1.w),
                        width: 10,
                        height: 10,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: e.index == state.onboardingActive
                                ? Palette.black
                                : Palette.gray),
                      ),
                    )
                    .toList(),
              ),
              CustomButton(
                text: "Create Account",
                onPressed: () {
                  context.go("/onboarding/register");
                },
              ).only(left: 7.w, right: 7.w, top: 2.h, bottom: 1.h),
              CustomButtonOutline(
                text: "Sign In as Guest",
                onPressed: () {
                  context.go("/onboarding/login");
                },
              ).symmetric(horizontal: 7.w).only(bottom: 2.h),
            ],
          );
        },
      )),
    );
  }
}
