import 'package:flutter/material.dart';
import 'package:flutter_rating/flutter_rating.dart';
import 'package:get/get.dart';
import 'package:app_ui/app_ui.dart';
import 'package:pharmacy_app/features/product/controllers/product_check_controller.dart';
import 'package:pharmacy_app/features/product/widgets/add_del_button.dart';
import 'package:pharmacy_app/features/product/widgets/review_item.dart';
import 'package:sizer/sizer.dart';

class ProductCheckView extends GetView<ProductCheckController> {
  const ProductCheckView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Obx(
        () {
          return Container(
            decoration: BoxDecoration(
              color: Palette.white,
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(12.sp),
              ),
              boxShadow: const [
                BoxShadow(
                  offset: Offset.zero,
                  color: Palette.gray,
                  blurRadius: 10,
                ),
              ],
            ),
            padding: EdgeInsets.symmetric(vertical: 2.h),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AddDelButton(
                  count: controller.countProduct(),
                  addAction: () {
                    controller.countProduct(
                      controller.countProduct() + 1,
                    );
                  },
                  delAction: () {
                    if (controller.countProduct() != 1) {
                      controller.countProduct(
                        controller.countProduct() - 1,
                      );
                    }
                  },
                ),
                Expanded(
                  child: CustomButton(
                    text:
                        "View basket ${(controller.priceProduct * controller.countProduct()).toStringAsFixed(2)} MX",
                    onPressed: () {},
                  ),
                ),
              ],
            ).marginSymmetric(horizontal: 5.w),
          );
        },
      ),
      body: SafeArea(
        child: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              expandedHeight: 50.h,
              automaticallyImplyLeading: false,
              leading: IconButton(
                icon: const Icon(
                  Icons.arrow_back_ios,
                ),
                onPressed: () => {Get.back()},
              ),
              flexibleSpace: FlexibleSpaceBar(
                background: Container(
                  color: Palette.primary,
                  child: const Center(
                    child: Texts.heavy(
                      "Producto",
                    ),
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: ColoredBox(
                color: Palette.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        margin: EdgeInsets.only(bottom: 3.h, top: 1.h),
                        width: 20.w,
                        height: 5,
                        decoration: BoxDecoration(
                          color: Palette.gray,
                          borderRadius: BorderRadius.circular(
                            12.sp,
                          ),
                        ),
                      ),
                    ),
                    const Texts.heavy(
                      "Belgian Waffles",
                      fontSize: 14,
                    ).marginOnly(bottom: 1.5.h),
                    Texts.roman(
                      "${controller.priceProduct} MX",
                    ).marginOnly(bottom: 2.h),
                    Container(
                      width: double.infinity,
                      height: 1,
                      color: Palette.white2,
                      margin: EdgeInsets.symmetric(vertical: 1.h),
                    ).marginOnly(bottom: 2.h),
                    const Texts.heavy(
                      "Description",
                      fontSize: 14,
                    ).marginOnly(bottom: 1.h),
                    const Texts.roman(
                      "Chicken tortilla, Chicken bites, mustard sauce, ketchup, pikled cucumber, cheese",
                      height: 1.5,
                    ).marginOnly(bottom: 2.h),
                    Container(
                      width: double.infinity,
                      height: 1,
                      color: Palette.white2,
                    ).marginSymmetric(vertical: 1.h),
                    const ListTile(
                      title: Texts.heavy(
                        "Duration",
                        fontSize: 14,
                      ),
                      subtitle: Texts.roman(
                        "This service may take up to",
                        height: 1.5,
                      ),
                      trailing: Texts.heavy(
                        "01:00",
                        fontSize: 15,
                        color: Palette.primary,
                      ),
                      contentPadding: EdgeInsets.zero,
                    ),
                    Container(
                      width: double.infinity,
                      height: 1,
                      color: Palette.white2,
                    ).marginSymmetric(vertical: 1.h),
                    const Texts.heavy(
                      "Reviews and ratings",
                      fontSize: 14,
                    ).marginOnly(bottom: 4.h, top: 1.h),
                    const Align(
                      alignment: Alignment.center,
                      child: Texts.roman(
                        "2.0",
                        fontSize: 18,
                        color: Palette.black,
                      ),
                    ).marginOnly(bottom: 1.h),
                    StarRating(
                      rating: 2,
                      size: 8.w,
                      color: Palette.primary,
                      borderColor: Palette.primary,
                    ).marginOnly(bottom: 2.h),
                    ListView.builder(
                      itemCount: 4,
                      physics: const NeverScrollableScrollPhysics(),
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return ReviewItem().marginOnly(bottom: 1.h);
                      },
                    ).marginOnly(bottom: 5.h),
                  ],
                ).marginSymmetric(horizontal: 5.w),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
