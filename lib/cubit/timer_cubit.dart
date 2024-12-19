import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import '../utils/constants.dart';

part 'timer_state.dart';

class TimerCubit extends Cubit<TimerState> {
  TimerCubit() : super(TimerInitial());

  static TimerCubit get(context) => BlocProvider.of<TimerCubit>(context);

  int remainingTime = defaultFocusTime; // remaining time by seconds
  SessionType sessionType = defaultSessionType; // sessionType -> focus or break
  int pomodoroCycles = 0; // counter of pomodoroCycles
  Stopwatch? stopwatch;

  // this function used to start session
  void startTimer() async {
    emit(DecreaseRemainingTimeState());
    stopwatch = Stopwatch()..start();
    while (stopwatch!.isRunning) {
      await Future.delayed(const Duration(seconds: 1));
      if (remainingTime > 0) {
        remainingTime = remainingTime - 1;
        emit(DecreaseRemainingTimeState());
      } else {
        // when reach to 00:00 convert sessionType to another sessionType
        _switchSession();
      }
    }
  }

  // this function used convert between  session type
  void _switchSession() {
    if (sessionType == SessionType.focus) {
      remainingTime = defaultBreakTime;
      sessionType = SessionType.shortBreak;
      emit(SwitchStatusState());
    } else {
      remainingTime = defaultFocusTime;
      sessionType = SessionType.focus;
      pomodoroCycles = pomodoroCycles + 1;

      // when reach to Break Pomodoro Cycles count i finish the session
      if (pomodoroCycles == defaultBreakPomodoroCycles) {
        finishPomodoroCycles();
      }
      else {
        emit(SwitchStatusState());
      }
    }
  }

  // this function used to return all values to default
  void resetTimer() {
    remainingTime = defaultFocusTime;
    sessionType = defaultSessionType;
    pomodoroCycles = 0;
    emit(ResetTimerState());
  }

  // this function used if user need to stop the time
  void stopTimer() {
    stopwatch!.stop();
    emit(StopTimerState());
  }

  // this function used when i finish the pomodoro cycles
  void finishPomodoroCycles() {
    stopwatch!.stop();
    resetTimer();
    emit(FinishPomodoroCyclesState());
  }

  // this function used when i change settings
  void stopAndResetAllValues()  {
    if(stopwatch != null && stopwatch!.isRunning) {
      stopwatch!.stop();
    }
    resetTimer();
    emit(StopAndResetAllValuesState());
  }
}
