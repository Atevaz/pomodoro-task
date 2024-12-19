import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../cubit/timer_cubit.dart';
import '../../utils/app_color.dart';
import '../widgets/commons_widgets/my_button.dart';
import '../widgets/timer_widget.dart';

class TimerView extends StatelessWidget {
  const TimerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const TimerWidget(),
        SizedBox(
          height: 20.h,
        ),
        Wrap(
          children: [
            MyButton(
              onTap: TimerCubit.get(context).stopwatch == null ||
                      !TimerCubit.get(context).stopwatch!.isRunning
                  ? TimerCubit.get(context).startTimer
                  : () {},
              title: "Start",
              width: 100.w,
              height: 30.h,
              color: TimerCubit.get(context).stopwatch == null ||
                      !TimerCubit.get(context).stopwatch!.isRunning
                  ? null
                  : Colors.grey,
            ),
            // SizedBox(width: 10.w),
            // MyButton(
            //   onTap: TimerCubit.get(context).stopwatch != null &&
            //           TimerCubit.get(context).stopwatch!.isRunning
            //       ? TimerCubit.get(context).stopTimer
            //       : () {},
            //   title: "Pause",
            //   width: 100.w,
            //   height: 30.h,
            //   color: AppColor.redColor,
            // ),
          ],
        ),
      ],
    );
  }
}
