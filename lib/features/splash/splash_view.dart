import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pharmacy_app/core/utils/const.dart';
import 'package:pharmacy_app/core/utils/palette.dart';
import 'package:pharmacy_app/core/utils/texts.dart';
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
        Get.toNamed("/onboarding");
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
              "${imageAsset}logo.png",
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
