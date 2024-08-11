import 'package:get/get.dart';
import 'package:pharmacy_app/features/auth/controllers/auth_controller.dart';

class AuthBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => AuthController(),
    );
  }
}
