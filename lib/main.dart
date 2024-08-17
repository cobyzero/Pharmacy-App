import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pharmacy_app/core/router/router.dart';
import 'package:pharmacy_app/features/booking/cubit/booking_cubit.dart';
import 'package:pharmacy_app/features/onboarding/cubit/onboarding_cubit.dart';
import 'package:sizer/sizer.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => OnboardingCubit()..setOnboardingCount(),
        ),
        BlocProvider(
          create: (context) => BookingCubit(),
        ),
      ],
      child: ResponsiveSizer(
        builder: (context, orientation, deviceType) {
          return MaterialApp.router(
            title: 'Material App',
            routerConfig: goRouter,
          );
        },
      ),
    );
  }
}
