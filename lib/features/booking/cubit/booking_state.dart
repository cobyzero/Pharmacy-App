part of 'booking_cubit.dart';

class BookingState {
  final PageController pageController;

  copyWith({
    PageController? pageController,
  }) {
    return BookingState(
      pageController: pageController ?? this.pageController,
    );
  }

  BookingState({required this.pageController});
}
