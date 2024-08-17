import 'package:flutter/material.dart';
import 'package:app_ui/app_ui.dart';
import 'package:go_router/go_router.dart';
import 'package:sizer/sizer.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2)).whenComplete(
      () {
        // ignore: use_build_context_synchronously
        context.go("/onboarding");
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.blueLight,
      body: SafeArea(
          child: SizedBox.expand(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              Assets.images.logo.path,
              width: 25.w,
              fit: BoxFit.cover,
            ),
            const Texts.roman(
              "Catchy",
              fontSize: 30,
              color: Palette.white,
            ),
          ],
        ),
      )),
    );
  }
}
