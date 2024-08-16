import 'package:get/get.dart';
import 'package:pharmacy_app/features/categories/controllers/categories_controller.dart';

class CategoriesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => CategoriesController(),
    );
  }
}
