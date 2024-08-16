import 'dart:async';

import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pharmacy_app/core/models/onboarding_model.dart';

class OnboardingController extends GetxController {
  static final onboardings = [
    OnboardingModel(
      0,
      image: Assets.images.header1.path,
      title: "Cash on Delivery or E-payment",
      description:
          "Our delivery will ensure your items are delivered right to the door steps",
    ),
    OnboardingModel(
      1,
      image: Assets.images.header2.path,
      title: "Delivery Right to Your Door Step",
      description:
          "Our delivery will ensure your items are delivered right to the door steps",
    ),
    OnboardingModel(
      2,
      image: Assets.images.header3.path,
      title: "Welcome to Tracky",
      description:
          "Tracky is the best solution to deliver and track goods from local and world shipping.",
    ),
  ];
  final onboardingActive = 0.obs;
  final pageController = PageController();
  late Timer timer;

  @override
  void onInit() {
    super.onInit();

    timer = Timer.periodic(
      const Duration(seconds: 3),
      (e) {
        if (onboardingActive() + 1 < onboardings.length) {
          onboardingActive(onboardingActive() + 1);
          pageController.nextPage(
            duration: const Duration(milliseconds: 500),
            curve: Curves.linear,
          );
        } else {
          onboardingActive(0);
          pageController.jumpToPage(0);
        }
      },
    );
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }
}
