import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pharmacy_app/features/booking/cubit/booking_cubit.dart';
import 'package:pharmacy_app/features/booking/views/pages/sender_details.dart';
import 'package:pharmacy_app/features/booking/views/pages/ubication_details.dart';

class BookingView extends StatelessWidget {
  const BookingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: context.read<BookingCubit>().state.pageController,
        children: const [
          UbicationDetails(),
          SenderDetails(),
        ],
      ),
    );
  }
}
