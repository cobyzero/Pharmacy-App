import 'package:app_ui/app_ui.dart';
import 'package:easy_padding/easy_padding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:pharmacy_app/features/booking/cubit/booking_cubit.dart';
import 'package:pharmacy_app/features/booking/widgets/send_item.dart';
import 'package:pharmacy_app/features/product/widgets/status_linear.dart';
import 'package:sizer/sizer.dart';

class UbicationDetails extends StatelessWidget {
  const UbicationDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Texts.heavy(
          "Booking",
        ),
        leading: BackButton(
          onPressed: () {
            context.pop();
          },
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  Icons.radio_button_checked,
                  color: Palette.orange,
                  size: 20.sp,
                ).only(right: 5.w),
                Expanded(
                  child: CustomInput(
                    hintText: "Pick up Location",
                    suffix: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.my_location,
                        size: 20.sp,
                        color: Palette.gray,
                      ),
                    ),
                  ),
                )
              ],
            ),
            const StatusLinear(),
            Row(
              children: [
                Icon(
                  Icons.location_on,
                  color: Palette.black,
                  size: 20.sp,
                ).only(right: 5.w),
                Expanded(
                  child: CustomInput(
                    hintText: "Pick up Location",
                    suffix: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.my_location,
                        size: 20.sp,
                        color: Palette.gray,
                      ),
                    ),
                  ),
                )
              ],
            ).only(bottom: 4.h),
            const Texts.heavy(
              "Dimension",
              fontSize: 16,
            ).only(bottom: 2.h),
            CustomInput(
              hintText: "0",
              icon: Icon(
                Icons.widgets,
                size: 20.sp,
                color: Palette.gray,
              ),
              suffix: Texts.medium(
                "Kg",
                padding: EdgeInsets.only(top: 1.5.h),
                alignment: TextAlign.center,
              ),
            ).only(bottom: 4.h),
            CustomButton(
              text: "Check",
              onPressed: () {
                showMaterialModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return SingleChildScrollView(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Texts.heavy(
                                      "1254 Kanata, Ottawa",
                                      height: 1.4,
                                    ).only(bottom: 1.h),
                                    const Texts.roman(
                                      "Picked Up",
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Icon(
                                  Icons.compare_arrows_outlined,
                                  size: 27.sp,
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    const Texts.heavy(
                                      "2541 Orleans, Toronto",
                                      height: 1.4,
                                      alignment: TextAlign.end,
                                    ).only(bottom: 1.h),
                                    const Texts.roman(
                                      "Destionation",
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Container(
                            width: double.infinity,
                            height: 2,
                            margin: EdgeInsets.symmetric(vertical: 4.h),
                            color: Palette.white2,
                          ),
                          ListView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: 3,
                            shrinkWrap: true,
                            itemBuilder: (context, index) {
                              return SendItem(
                                  onTap: () {
                                    context.read<BookingCubit>().nextPage();
                                    context.pop();
                                  },
                                  text: "Regular");
                            },
                          ),
                        ],
                      ).symmetric(vertical: 3.h, horizontal: 5.w),
                    );
                  },
                );
              },
            ),
          ],
        ).symmetric(horizontal: 5.w),
      ),
    );
  }
}
