import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class StatusLinear extends StatelessWidget {
  const StatusLinear({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 5.h,
      child: VerticalDivider(
        color: Colors.grey.shade400,
        thickness: 1,
        width: 20,
        indent: 8,
        endIndent: 8,
      ),
    );
  }
}
