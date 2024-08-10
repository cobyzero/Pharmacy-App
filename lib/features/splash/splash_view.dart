import 'package:flutter/material.dart';
import 'package:pharmacy_app/core/utils/const.dart';
import 'package:pharmacy_app/core/utils/palette.dart';
import 'package:pharmacy_app/core/utils/texts.dart';
import 'package:sizer/sizer.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

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
              width: 30.w,
              fit: BoxFit.cover,
            ),
            const Texts.medium(
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
