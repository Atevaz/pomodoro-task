import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../utils/app_color.dart';
import 'medium_text.dart';
import 'my_button.dart';

class CustomDialog extends StatelessWidget {
  const CustomDialog({super.key, required this.onConfirmPressed});

  final void Function() onConfirmPressed ;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      insetPadding: EdgeInsets.zero,
      alignment: Alignment.center,
      contentPadding: EdgeInsets.zero,
      content: SingleChildScrollView(
        child: Container(
          width: 280.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.r),
            color: AppColor.whiteColor,
            boxShadow: [
              BoxShadow(
                offset: Offset(0,0),
                blurRadius: 20,
                spreadRadius: 0,
                color: AppColor.blackColor.withOpacity(.15),
              )
            ]
          ),
          child: Padding(
            padding: EdgeInsets.all(16.r),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const MediumText(
                  text:
                  'This action will stop the timer and reset its values to the newly specified settings.',
                  maxLines: 4,
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  textAlign: TextAlign.center,
                  color: AppColor.textColor,
                ),

                SizedBox(
                  height: 10.h,
                ),
                MyButton(
                  onTap: onConfirmPressed ,
                  title: 'Continue',
                  width: 143.w,
                  height: 30.h,
                  fontSize: 16,
                  color: AppColor.blueColor,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
