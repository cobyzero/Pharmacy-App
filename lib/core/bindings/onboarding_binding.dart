import 'package:get/get.dart';
import 'package:pharmacy_app/features/onboarding/controllers/onboarding_controller.dart';

class OnboardingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => OnboardingController(),
    );
  }
}
