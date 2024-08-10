import 'package:get/get.dart';
import 'package:pharmacy_app/features/splash/splash_view.dart';

final getRouter = <GetPage>[
  GetPage(
    name: "/splash",
    page: () => const SplashView(),
  ),
];
