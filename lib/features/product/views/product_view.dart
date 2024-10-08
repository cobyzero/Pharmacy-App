import 'package:easy_padding/extentions/padding_extentions.dart';
import 'package:flutter/material.dart';
import 'package:app_ui/app_ui.dart';
import 'package:go_router/go_router.dart';
import 'package:pharmacy_app/features/product/widgets/contact_item.dart';
import 'package:pharmacy_app/features/product/widgets/status_item.dart';
import 'package:pharmacy_app/features/product/widgets/status_linear.dart';
import 'package:sizer/sizer.dart';

class ProductView extends StatelessWidget {
  const ProductView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              floating: true,
              expandedHeight: 53.h,
              automaticallyImplyLeading: false,
              leading: IconButton(
                icon: const Icon(
                  Icons.arrow_back_ios,
                ),
                onPressed: context.pop,
              ),
              title: const Texts.heavy(
                "Detail Location",
              ),
              centerTitle: true,
              flexibleSpace: FlexibleSpaceBar(
                background: Container(
                  color: Palette.primary,
                  child: const Center(
                    child: Texts.heavy(
                      "MAPA",
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
                      "Your Package on The Way",
                      fontSize: 14,
                    ).only(bottom: 1.5.h),
                    const Texts.roman(
                      "Arriving at pick up point in 2 mins",
                    ).only(bottom: 3.h),
                    const ContactItem().only(bottom: 2.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Texts.heavy(
                              "MM09130520",
                              fontSize: 14,
                            ).only(bottom: 1.h),
                            const Texts.roman(
                              "Track Number",
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Texts.heavy(
                              "1-3 Hours",
                              fontSize: 14,
                            ).only(bottom: 1.h),
                            const Texts.roman(
                              "Estimate Time",
                            ),
                          ],
                        ),
                      ],
                    ).only(bottom: 1.h),
                    Container(
                      width: double.infinity,
                      height: 1,
                      color: Palette.white2,
                      margin: EdgeInsets.symmetric(vertical: 1.h),
                    ).only(bottom: 2.h),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const StatusItem(
                          title: 'Accepted',
                          subtitle: '18 January 2022, 4:38 PM',
                          active: true,
                        ),
                        const StatusLinear(),
                        const StatusItem(
                          title: 'On the way',
                          subtitle: '18 January 2022, 4:38 PM',
                          active: false,
                        ),
                        const StatusLinear(),
                        const StatusItem(
                          title: 'Ready',
                          subtitle: '18 January 2022, 4:38 PM',
                          active: false,
                        ),
                        const StatusLinear(),
                        const StatusItem(
                          title: 'Completed',
                          subtitle: '18 January 2022, 4:38 PM',
                          active: false,
                        ).only(bottom: 4.h),
                        CustomButton(
                          text: "Mark as Done",
                          onPressed: () {},
                        ).only(bottom: 2.h),
                        CustomButtonOutline(
                          text: "Report an Issue",
                          onPressed: () {},
                        ).only(bottom: 4.h),
                      ],
                    ),
                  ],
                ).symmetric(horizontal: 5.w),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
