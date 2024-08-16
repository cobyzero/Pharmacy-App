import 'package:app_ui/src/utils/utils.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
  });
  final String text;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Palette.primary,
        minimumSize: const Size(
          double.infinity,
          50,
        ),
      ),
      onPressed: onPressed,
      child: Texts.heavy(
        text,
        fontSize: 14,
        color: Palette.white,
      ),
    );
  }
}
