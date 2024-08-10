import 'package:get/get.dart';
import 'package:pharmacy_app/core/bindings/onboarding_binding.dart';
import 'package:pharmacy_app/features/onboarding/views/onboarding_view.dart';
import 'package:pharmacy_app/features/splash/splash_view.dart';

final getRouter = <GetPage>[
  GetPage(
    name: "/splash",
    page: () => const SplashView(),
  ),
  GetPage(
    name: "/onboarding",
    page: () => const OnboardingView(),
    binding: OnboardingBinding(),
  ),
];
