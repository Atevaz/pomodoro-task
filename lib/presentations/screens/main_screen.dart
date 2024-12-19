import 'package:fimple_task/cubit/timer_cubit.dart';
import 'package:fimple_task/presentations/screens/settings_screen.dart';
import 'package:fimple_task/presentations/views/Timer_view.dart';
import 'package:fimple_task/presentations/views/completed_view.dart';
import 'package:fimple_task/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../widgets/commons_widgets/headline_text.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.redColor,
        title: const HeadLineText(
          text: 'Pomodoro Timer',
          color: AppColor.whiteColor,
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SettingsScreen()));
              },
              icon: const Icon(
                Icons.settings,
                color: AppColor.whiteColor,
              ))
        ],
      ),
      body: SizedBox(
        width: double.infinity,
        child: BlocConsumer<TimerCubit, TimerState>(
          listener: (context, state) {
            // TODO: implement listener
          },
          builder: (context, state) {
            // here i listen to changes that is execute in the cubit
            // when i listen the FinishPomodoroCyclesState state
            // i show CompletedPomodoroCyclesView
            // else i show TimerView
            if(state is FinishPomodoroCyclesState) {
              return CompletedView() ;
            }
            else {
              return TimerView() ;
            }
          },
        ),
      ),
    );
  }
}
