part of 'onboarding_cubit.dart';

class OnboardingState {
  final onboardings = [
    OnboardingModel(
      0,
      image: Assets.images.header1.path,
      title: "Cash on Delivery or E-payment",
      description:
          "Our delivery will ensure your items are delivered right to the door steps",
    ),
    OnboardingModel(
      1,
      image: Assets.images.header2.path,
      title: "Delivery Right to Your Door Step",
      description:
          "Our delivery will ensure your items are delivered right to the door steps",
    ),
    OnboardingModel(
      2,
      image: Assets.images.header3.path,
      title: "Welcome to Tracky",
      description:
          "Tracky is the best solution to deliver and track goods from local and world shipping.",
    ),
  ];

  final int onboardingActive;

  OnboardingState({required this.onboardingActive});
}
