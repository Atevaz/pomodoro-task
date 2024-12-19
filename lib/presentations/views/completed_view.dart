import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../cubit/timer_cubit.dart';
import '../widgets/commons_widgets/my_button.dart';
import '../widgets/completed_pomodoro_widget.dart';

class CompletedView extends StatelessWidget {
  const CompletedView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CompletedPomodoroWidget(),
        SizedBox(
          height: 20.h,
        ),
        MyButton(
          onTap: TimerCubit.get(context).resetTimer,
          title: "Restart",
          width: 100.w,
          height: 30.h,
        ),
      ],
    );
  }
}
