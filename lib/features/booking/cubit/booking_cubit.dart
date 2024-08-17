import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'booking_state.dart';

class BookingCubit extends Cubit<BookingState> {
  BookingCubit()
      : super(
          BookingState(pageController: PageController()),
        );

  nextPage() {
    state.pageController.nextPage(
      duration: const Duration(milliseconds: 500),
      curve: Curves.linear,
    );
  }

  previusPage() {
    state.pageController.previousPage(
      duration: const Duration(milliseconds: 500),
      curve: Curves.linear,
    );
  }
}
