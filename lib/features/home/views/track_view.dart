import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:app_ui/app_ui.dart';
import 'package:pharmacy_app/features/home/controllers/home_controller.dart';
import 'package:sizer/sizer.dart';

class TrackView extends GetView<HomeController> {
  const TrackView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Texts.heavy(
          "Track",
          fontSize: 14,
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: const Column(
          children: [
            CustomInput(
              hintText: "Enter track number",
              icon: Icons.search,
            ),
            Expanded(
              child: Center(
                child: Texts.roman(
                  "Not a have packages active.",
                ),
              ),
            )
          ],
        ).marginSymmetric(horizontal: 5.w),
      ),
    );
  }
}
