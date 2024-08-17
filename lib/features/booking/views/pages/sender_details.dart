import 'package:app_ui/app_ui.dart';
import 'package:easy_padding/easy_padding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pharmacy_app/features/booking/cubit/booking_cubit.dart';
import 'package:sizer/sizer.dart';

class SenderDetails extends StatelessWidget {
  const SenderDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: () {
            context.read<BookingCubit>().previusPage();
          },
        ),
        title: const Texts.heavy("Order Details"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Texts.heavy("Full Name").only(bottom: 1.h, top: 2.h),
          const CustomInput(
            icon: Icon(
              Icons.person_2_outlined,
              color: Palette.gray,
            ),
            hintText: "Enter your name",
          ).only(bottom: 3.h),
          const Texts.heavy("Phone Number").only(bottom: 1.h),
          const CustomInput(
            icon: Icon(
              Icons.phone_outlined,
              color: Palette.gray,
            ),
            hintText: "Enter your number",
          ).only(bottom: 3.h),
          const Texts.heavy("DNI").only(bottom: 1.h),
          const CustomInput(
            icon: Icon(
              Icons.card_membership,
              color: Palette.gray,
            ),
            hintText: "Enter your dni",
          ).only(bottom: 3.h),
          const Texts.heavy("Details").only(bottom: 1.h),
          const CustomInput(
            icon: Icon(
              Icons.medical_information_outlined,
              color: Palette.gray,
            ),
            maxLines: 2,
            hintText:
                "Type detailed location to make it easier for us to pick up the package",
          ).only(bottom: 6.h),
          CustomButton(
            text: "Continue",
            onPressed: () {
              context.read<BookingCubit>().nextPage();
            },
          ),
        ],
      ).symmetric(horizontal: 5.w),
    );
  }
}
