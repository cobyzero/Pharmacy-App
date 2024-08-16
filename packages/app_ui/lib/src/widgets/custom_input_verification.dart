import 'package:flutter/material.dart';
import 'package:app_ui/src/utils/utils.dart';
import 'package:sizer/sizer.dart';

class CustomInputVerification extends StatefulWidget {
  const CustomInputVerification({
    super.key,
    required this.focusNode,
    required this.onChanged,
    this.controller,
  });
  final TextEditingController? controller;
  final FocusNode focusNode;
  final Function(String)? onChanged;
  @override
  State<CustomInputVerification> createState() =>
      _CustomInputVerificationState();
}

class _CustomInputVerificationState extends State<CustomInputVerification> {
  bool hasFocus = false;
  @override
  void initState() {
    widget.focusNode.addListener(
      () {
        setState(() {
          hasFocus = widget.focusNode.hasFocus;
        });
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 15.w,
      child: TextFormField(
        keyboardType: TextInputType.number,
        onChanged: widget.onChanged,
        textAlign: TextAlign.center,
        controller: widget.controller,
        focusNode: widget.focusNode,
        decoration: InputDecoration(
          filled: true,
          fillColor: Palette.white,
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Palette.white2),
            borderRadius: BorderRadius.circular(12.sp),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Palette.black),
            borderRadius: BorderRadius.circular(12.sp),
          ),
        ),
      ),
    );
  }
}
