import 'dart:async';

import 'package:fimple_task/presentations/widgets/commons_widgets/headline_text.dart';
import 'package:flutter/material.dart';

import '../../utils/app_color.dart';
import '../../utils/cach_helper.dart';
import '../../utils/constants.dart';
import 'main_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _getDataFromCash();
    Future.delayed(const Duration(seconds: 2)).then((v) {
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => const MainScreen()),
        (route) => false,
      );
    });
  }



  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColor.redColor,
      body: Center(
        child: HeadLineText(
          text: 'Pomodoro Task',
          fontSize: 45,
          color: AppColor.whiteColor,
        ),
      ),
    );
  }

  // this function is used to get all data from caching
  void _getDataFromCash() {

    defaultFocusTime = CashHelper.getData(
      key: 'defaultFocusTime',
    ) ??
        defaultFocusTime;

    defaultBreakTime = CashHelper.getData(
      key: 'defaultBreakTime',
    ) ??
        defaultBreakTime;

    selectedFocusDuration = CashHelper.getData(
      key: 'selectedFocusDuration',
    ) ??
        selectedFocusDuration;

    selectedBreakDuration = CashHelper.getData(
      key: 'selectedBreakDuration',
    ) ??
        selectedBreakDuration;

    selectedPomodoroCycles = CashHelper.getData(
      key: 'selectedPomodoroCycles',
    ) ??
        selectedPomodoroCycles;

    defaultBreakPomodoroCycles = CashHelper.getData(
      key: 'defaultBreakPomodoroCycles',
    ) ??
        defaultBreakPomodoroCycles;
  }
}
