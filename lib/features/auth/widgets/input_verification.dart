import 'package:flutter/material.dart';
import 'package:pharmacy_app/core/widgets/custom_input_verification.dart';

class InputVerification extends StatefulWidget {
  const InputVerification({super.key});

  @override
  State<InputVerification> createState() => _InputVerificationState();
}

class _InputVerificationState extends State<InputVerification> {
  final focus1 = FocusNode();
  final focus2 = FocusNode();
  final focus3 = FocusNode();
  final focus4 = FocusNode();

  @override
  void dispose() {
    focus1.dispose();
    focus2.dispose();
    focus3.dispose();
    focus4.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        CustomInputVerification(
          focusNode: focus1,
          onChanged: (p0) {
            if (p0.isNotEmpty) {
              focus1.nextFocus();
            }
          },
        ),
        CustomInputVerification(
          focusNode: focus2,
          onChanged: (p0) {
            if (p0.isEmpty) {
              focus2.previousFocus();
            } else {
              focus2.nextFocus();
            }
          },
        ),
        CustomInputVerification(
          focusNode: focus3,
          onChanged: (p0) {
            if (p0.isEmpty) {
              focus3.previousFocus();
            } else {
              focus3.nextFocus();
            }
          },
        ),
        CustomInputVerification(
          focusNode: focus4,
          onChanged: (p0) {
            if (p0.isEmpty) {
              focus4.previousFocus();
            } else {
              focus4.unfocus();
            }
          },
        ),
      ],
    );
  }
}
