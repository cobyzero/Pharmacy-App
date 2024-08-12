import 'package:get/get.dart';
import 'package:pharmacy_app/features/product/controllers/product_controller.dart';

class ProductBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => ProductController(),
    );
  }
}
