import 'package:flutter/material.dart';
import 'package:app_ui/app_ui.dart';
import 'package:sizer/sizer.dart';

class AddDelButton extends StatelessWidget {
  const AddDelButton({
    super.key,
    required this.addAction,
    required this.delAction,
    required this.count,
  });
  final Function() addAction;
  final Function() delAction;
  final int count;

  @override
  Widget build(BuildContext context) {
    final active = count > 1;
    return Row(
      children: [
        IconButton(
          onPressed: active ? delAction : () {},
          icon: Icon(
            Icons.remove,
            color: active ? Palette.black : Palette.gray,
            size: 17.sp,
          ),
        ),
        Texts.roman(
          count.toString(),
          fontSize: 15,
          color: Palette.black,
        ),
        IconButton(
          onPressed: addAction,
          icon: Icon(
            Icons.add,
            color: Palette.black,
            size: 17.sp,
          ),
        ),
      ],
    );
  }
}
