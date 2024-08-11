import 'package:flutter/material.dart';
import 'package:pharmacy_app/core/utils/palette.dart';
import 'package:sizer/sizer.dart';

class Texts extends StatelessWidget {
  final String text;
  final double fontSize;
  final TextAlign alignment;
  final FontWeight fontWeight;
  final bool underline;
  final Color color;
  final double height;
  final int maxLines;
  final EdgeInsetsGeometry? padding;
  final TextOverflow textOverflow;
  final double? letterSpacing;
  final void Function()? onTap;
  final TextStyle? style;
  final String? fontFamily;

  const Texts(
    this.text, {
    super.key,
    this.fontSize = 15,
    required this.fontWeight,
    this.underline = false,
    this.alignment = TextAlign.left,
    this.height = 1,
    this.maxLines = 30,
    this.textOverflow = TextOverflow.clip,
    required this.color,
    this.padding,
    this.style,
    this.letterSpacing,
    this.onTap,
    this.fontFamily,
  });

  const Texts.heavy(
    this.text, {
    super.key,
    this.height = 1,
    this.fontSize = 15,
    this.fontFamily,
    this.alignment = TextAlign.left,
    this.underline = false,
    this.color = Palette.black,
    this.maxLines = 30,
    this.textOverflow = TextOverflow.clip,
    this.padding,
    this.letterSpacing,
    this.style,
    this.onTap,
  }) : fontWeight = FontWeight.w800;
  const Texts.medium(
    this.text, {
    super.key,
    this.height = 1,
    this.fontFamily,
    this.fontSize = 15,
    this.alignment = TextAlign.left,
    this.underline = false,
    this.color = Palette.black,
    this.maxLines = 30,
    this.letterSpacing,
    this.textOverflow = TextOverflow.clip,
    this.padding,
    this.style,
    this.onTap,
  }) : fontWeight = FontWeight.w600;
  const Texts.roman(
    this.text, {
    super.key,
    this.height = 1,
    this.fontFamily,
    this.fontSize = 10,
    this.alignment = TextAlign.left,
    this.underline = false,
    this.color = Palette.gray,
    this.maxLines = 30,
    this.letterSpacing,
    this.textOverflow = TextOverflow.clip,
    this.padding,
    this.style,
    this.onTap,
  }) : fontWeight = FontWeight.w400;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? EdgeInsets.zero,
      child: GestureDetector(
        onTap: onTap,
        child: Text(
          text,
          textAlign: alignment,
          style: TextStyle(
            color: color,
            fontSize: fontSize.sp,
            height: height,
            fontWeight: fontWeight,
            letterSpacing: letterSpacing,
            fontFamily: fontFamily,
            decoration:
                underline ? TextDecoration.underline : TextDecoration.none,
          ),
          maxLines: maxLines,
          overflow: textOverflow,
          softWrap: true,
        ),
      ),
    );
  }
}
