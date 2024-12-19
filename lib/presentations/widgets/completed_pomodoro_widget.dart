import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'commons_widgets/medium_text.dart';

class CompletedPomodoroWidget extends StatelessWidget {
  const CompletedPomodoroWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const MediumText(
          text: "Completed Pomodoro cycles",
          fontSize: 24,
        ),
        SizedBox(
          height: 15.h,
        ),
      ],
    );
  }
}
