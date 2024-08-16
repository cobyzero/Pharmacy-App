import 'package:app_ui/src/utils/utils.dart';
import 'package:flutter/material.dart';

class CustomButtonOutline extends StatelessWidget {
  const CustomButtonOutline({
    super.key,
    required this.text,
    required this.onPressed,
  });
  final String text;
  final Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        minimumSize: const Size(
          double.infinity,
          50,
        ),
        side: const BorderSide(
          width: 1,
          color: Palette.gray,
        ),
      ),
      onPressed: onPressed,
      child: Texts.heavy(
        text,
        fontSize: 14,
        color: Palette.black,
      ),
    );
  }
}
