import 'package:get/get.dart';
import 'package:pharmacy_app/features/product/controllers/product_check_controller.dart';

class ProductCheckBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => ProductCheckController(),
    );
  }
}
