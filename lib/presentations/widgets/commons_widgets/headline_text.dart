import 'package:flutter/material.dart';

import '../../../utils/app_color.dart';

class HeadLineText extends StatelessWidget {
  final String text;
  final Color? color;
  final String? fontFamily;
  final double? fontSize;
  final double? height;
  final int maxLines;
  final bool? isUpper;
  final TextAlign? textAlign;
  final TextOverflow overflow;
  final FontWeight? fontWeight;

  const HeadLineText({super.key,
    required this.text,
    this.color,
    this.fontSize,
    this.maxLines = 10,
    this.fontFamily,
    this.overflow = TextOverflow.ellipsis,
    this.isUpper = false,
    this.textAlign = TextAlign.center,
    this.fontWeight,
    this.height});

  @override
  Widget build(BuildContext context) {
    return Text(
      isUpper! ? text.toUpperCase() : text,
      style: TextStyle(
        letterSpacing: 0,
        color: color ?? AppColor.textColor,
        fontWeight: fontWeight ?? FontWeight.w600,
        fontSize:  fontSize ?? 18,
        height: height ?? 1,
        overflow: overflow,
        fontFamily: fontFamily?? 'Roboto',
      ),
      maxLines: maxLines,
      textAlign: textAlign,
    );
  }
}
