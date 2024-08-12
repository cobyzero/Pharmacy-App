import 'package:get/get.dart';
import 'package:pharmacy_app/core/bindings/auth_binding.dart';
import 'package:pharmacy_app/core/bindings/categories_binding.dart';
import 'package:pharmacy_app/core/bindings/home_binding.dart';
import 'package:pharmacy_app/core/bindings/onboarding_binding.dart';
import 'package:pharmacy_app/core/bindings/product_binding.dart';
import 'package:pharmacy_app/features/auth/views/login_view.dart';
import 'package:pharmacy_app/features/auth/views/register_view.dart';
import 'package:pharmacy_app/features/auth/views/verification_code_view.dart';
import 'package:pharmacy_app/features/categories/views/categories_view.dart';
import 'package:pharmacy_app/features/home/views/track_view.dart';
import 'package:pharmacy_app/features/navigator/navigator_view.dart';
import 'package:pharmacy_app/features/onboarding/views/onboarding_view.dart';
import 'package:pharmacy_app/features/product/views/product_view.dart';
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
  GetPage(
    name: "/register",
    page: () => const RegisterView(),
    binding: AuthBinding(),
  ),
  GetPage(
    name: "/login",
    page: () => const LoginView(),
    binding: AuthBinding(),
  ),
  GetPage(
    name: "/verification",
    page: () => const VerificationCodeView(),
    binding: AuthBinding(),
  ),
  GetPage(
    name: "/navigator",
    page: () => const NavigatorView(),
    binding: HomeBinding(),
  ),
  GetPage(
    name: "/track",
    page: () => const TrackView(),
    binding: HomeBinding(),
  ),
  GetPage(
    name: "/product",
    page: () => const ProductView(),
    binding: ProductBinding(),
  ),
  GetPage(
    name: "/categories",
    page: () => const CategoriesView(),
    binding: CategoriesBinding(),
  ),
];
