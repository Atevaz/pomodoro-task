import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/app_color.dart';
import '../commons_widgets/headline_text.dart';

class MyButton extends StatelessWidget {
  const MyButton({
    required this.onTap,
    required this.title,
    this.margin,
    this.width,
    this.height = 56,
    this.fontSize,
    this.isBorder = false,
    this.color,
    this.needShadow,
    this.textColor,
    super.key,
  });

  final void Function()? onTap;
  final String title;
  final EdgeInsetsGeometry? margin;
  final double? width;
  final double? height;
  final double? fontSize;
  final bool isBorder;
  final Color? color;
  final bool? needShadow;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      width: width ?? double.infinity,
      height: height?.h,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      decoration: BoxDecoration(
        color: color ?? AppColor.blueColor,
        borderRadius: BorderRadius.circular(30.r),
        boxShadow: [
          if(needShadow == true) BoxShadow(
            color: AppColor.whiteColor.withOpacity(.25),
            offset: Offset(3, 4),
            blurRadius: 9.4,
            spreadRadius: 0
          ),
        ]
      ),
      child: MaterialButton(
        onPressed: onTap,
        child: Center(
          child: HeadLineText(
            text: title,
            textAlign: TextAlign.center,
            color: textColor ?? AppColor.textButtonColor,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
