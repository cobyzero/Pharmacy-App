import 'package:go_router/go_router.dart';
import 'package:pharmacy_app/features/auth/views/login_view.dart';
import 'package:pharmacy_app/features/auth/views/register_view.dart';
import 'package:pharmacy_app/features/auth/views/verification_code_view.dart';
import 'package:pharmacy_app/features/booking/views/booking_view.dart';
import 'package:pharmacy_app/features/categories/views/categories_view.dart';
import 'package:pharmacy_app/features/home/views/track_view.dart';
import 'package:pharmacy_app/features/navigator/navigator_view.dart';
import 'package:pharmacy_app/features/onboarding/views/onboarding_view.dart';
import 'package:pharmacy_app/features/product/views/product_view.dart';
import 'package:pharmacy_app/features/splash/splash_view.dart';

final goRouter = GoRouter(
  initialLocation: "/splash",
  routes: [
    GoRoute(
      path: "/splash",
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: "/onboarding",
      builder: (context, state) => OnboardingView(),
      routes: [
        GoRoute(
          path: "register",
          builder: (context, state) => const RegisterView(),
          routes: [
            GoRoute(
              path: "verification",
              builder: (context, state) => const VerificationCodeView(),
            ),
          ],
        ),
        GoRoute(
          path: "login",
          builder: (context, state) => const LoginView(),
        ),
      ],
    ),
    GoRoute(
      path: "/home",
      builder: (context, state) => const NavigatorView(),
      routes: [
        GoRoute(
          path: "track",
          builder: (context, state) => const TrackView(),
        ),
        GoRoute(
          path: "product",
          builder: (context, state) => const ProductView(),
        ),
        GoRoute(
          path: "categories",
          builder: (context, state) => const CategoriesView(),
        ),
        GoRoute(
          path: "booking",
          builder: (context, state) => const BookingView(),
        ),
      ],
    ),
  ],
);
