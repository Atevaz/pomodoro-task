import 'package:fimple_task/presentations/widgets/commons_widgets/headline_text.dart';
import 'package:fimple_task/presentations/widgets/commons_widgets/medium_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../cubit/timer_cubit.dart';
import '../../utils/constants.dart';

class TimerWidget extends StatelessWidget {
  const TimerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TimerCubit, TimerState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Column(
          children: [
            MediumText(
              text: TimerCubit.get(context).sessionType == SessionType.focus
                  ? 'Focus Session'
                  : "Short Break",
              fontSize: 24,
            ),
            SizedBox(
              height: 15.h,
            ),
            HeadLineText(
              text:
                  '${(TimerCubit.get(context).remainingTime ~/ 60).toString().padLeft(2, '0')}:${(TimerCubit.get(context).remainingTime % 60).toString().padLeft(2, '0')}',
              fontSize: 48,
            ),
          ],
        );
      },
    );
  }
}
