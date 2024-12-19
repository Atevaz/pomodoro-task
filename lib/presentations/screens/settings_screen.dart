import 'package:fimple_task/cubit/timer_cubit.dart';
import 'package:fimple_task/presentations/widgets/commons_widgets/medium_text.dart';
import 'package:fimple_task/utils/cach_helper.dart';
import 'package:fimple_task/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../utils/app_color.dart';
import '../widgets/commons_widgets/custom_dialog.dart';
import '../widgets/commons_widgets/headline_text.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return PopScope(
      onPopInvokedWithResult: (c, v) {
        // this function is used to return all values to newly specified values when i back
        backButtonFunction(context);
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColor.redColor,
          iconTheme: const IconThemeData(color: AppColor.whiteColor),
          title: const HeadLineText(
            text: 'Settings',
            color: AppColor.whiteColor,
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(8.r),
          child: Column(
            children: [
              // this widget to change default focus time
              ListTile(
                title: const MediumText(
                  text: "Focus Duration",
                  textAlign: TextAlign.start,
                ),
                trailing: DropdownButton<int>(
                  value: selectedFocusDuration,
                  items: focusDurationList
                      .map((value) => DropdownMenuItem(
                          value: (value), child: Text("$value min")))
                      .toList(),
                  onChanged: _changesDefaultFocusTime,
                ),
              ),
              // this widget to change default short break time
              ListTile(
                title: const MediumText(
                  text: "Break Duration",
                  textAlign: TextAlign.start,
                ),
                trailing: DropdownButton<int>(
                  value: selectedBreakDuration,
                  items: breakDurationList
                      .map((value) => DropdownMenuItem(
                          value: value, child: Text("$value min")))
                      .toList(),
                  onChanged: _changesDefaultBreakTime,
                ),
              ),
              // this widget to change default pomodoro Cycles
              ListTile(
                title: const MediumText(
                  text: "Pomodoro Cycles",
                  textAlign: TextAlign.start,
                ),
                trailing: DropdownButton<int>(
                  value: selectedPomodoroCycles,
                  items: pomodoroCyclesList
                      .map((value) => DropdownMenuItem(
                          value: value, child: Text("$value min")))
                      .toList(),
                  onChanged: _changesDefaultBreakPomodoroCycles,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // this function to change default focus time
  void _changesDefaultFocusTime(int? value) {
    showDialog(
      context: context,
      builder: (context) => CustomDialog(
        onConfirmPressed: () {
          Navigator.pop(context);
          setState(() {
            defaultFocusTime = value! * 60;
            selectedFocusDuration = value;
            CashHelper.saveData(key: 'defaultFocusTime', value: defaultFocusTime);
            CashHelper.saveData(
                key: 'selectedFocusDuration', value: selectedFocusDuration);
          });
          TimerCubit.get(context).stopAndResetAllValues();
        },
      ),
    );

  }

  // this function to change default short break time
  void _changesDefaultBreakTime(int? value) {
    showDialog(
      context: context,
      builder: (context) => CustomDialog(
        onConfirmPressed: () {
          Navigator.pop(context);
          setState(() {
            defaultBreakTime = value! * 60;
            selectedBreakDuration = value;
            CashHelper.saveData(key: 'defaultBreakTime', value: defaultBreakTime);
            CashHelper.saveData(
                key: 'selectedBreakDuration', value: selectedBreakDuration);
          });
          TimerCubit.get(context).stopAndResetAllValues();
        },
      ),
    );

  }

  // this function to change default pomodoro Cycles
  void _changesDefaultBreakPomodoroCycles(int? value) {
    showDialog(
      context: context,
      builder: (context) => CustomDialog(
        onConfirmPressed: () async {
          Navigator.pop(context);
          setState(() {
            defaultBreakPomodoroCycles = value!;
            selectedPomodoroCycles = value;
            CashHelper.saveData(
                key: 'defaultBreakPomodoroCycles', value: defaultBreakPomodoroCycles);
            CashHelper.saveData(
                key: 'selectedPomodoroCycles', value: selectedPomodoroCycles);
          });
          TimerCubit.get(context).stopAndResetAllValues();
        },
      ),
    );

  }

  // this function to return all values to newly specified values when i back
  void backButtonFunction(BuildContext context) {
    if (TimerCubit.get(context).stopwatch != null &&
        !TimerCubit.get(context).stopwatch!.isRunning) {
      TimerCubit.get(context).stopAndResetAllValues();
    }
  }
}
