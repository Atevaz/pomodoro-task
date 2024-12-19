import 'package:flutter/material.dart';

import '../../../utils/app_color.dart';
class MediumText extends StatelessWidget {
  final String text;
  final String? fontFamily;
  final Color? color;
  final double? fontSize;
  final int maxLines;
  final bool isUnderLine;
  final TextOverflow overflow;
  final TextAlign? textAlign;
  final FontWeight? fontWeight;

  const MediumText({Key? key,
    required this.text,
    this.color,
    this.fontSize,
    this.maxLines = 3,
    this.fontFamily,
    this.isUnderLine = false,
    this.overflow = TextOverflow.ellipsis,
    this.textAlign = TextAlign.center,
    this.fontWeight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
          color: color ?? AppColor.textColor,
          fontSize:  fontSize ?? 16,
          height: 1.3,
          decoration: isUnderLine == false
              ? TextDecoration.none
              : TextDecoration.underline,
          overflow: overflow,
          fontWeight: fontWeight ?? FontWeight.w500,
          fontFamily: fontFamily?? 'Roboto'),
      maxLines: maxLines,
    );
  }
}
