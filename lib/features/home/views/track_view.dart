import 'package:easy_padding/extentions/padding_extentions.dart';
import 'package:flutter/material.dart';
import 'package:app_ui/app_ui.dart';
import 'package:sizer/sizer.dart';

class TrackView extends StatelessWidget {
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
            Hero(
              tag: "search",
              child: CustomInput(
                hintText: "Enter track number",
                icon: Icon(Icons.search),
              ),
            ),
            Expanded(
              child: Center(
                child: Texts.roman(
                  "Not a have packages active.",
                ),
              ),
            )
          ],
        ).symmetric(horizontal: 5.w),
      ),
    );
  }
}
