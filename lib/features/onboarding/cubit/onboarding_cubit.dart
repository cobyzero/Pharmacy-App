import 'dart:async';
import 'dart:developer';

import 'package:app_ui/app_ui.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pharmacy_app/core/models/onboarding_model.dart';

part 'onboarding_state.dart';

class OnboardingCubit extends Cubit<OnboardingState> {
  OnboardingCubit() : super(OnboardingState(onboardingActive: 0));
  late Timer timer;
  void setOnboardingCount() {
    timer = Timer.periodic(
      const Duration(seconds: 3),
      (e) {
        log("Movido");
        if (state.onboardingActive + 1 < state.onboardings.length) {
          emit(
            OnboardingState(onboardingActive: state.onboardingActive + 1),
          );
        } else {
          emit(
            OnboardingState(onboardingActive: 0),
          );
        }
      },
    );
  }

  @override
  Future<void> close() {
    timer.cancel();
    return super.close();
  }
}
