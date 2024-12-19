part of 'timer_cubit.dart';

// states that used in timer cubit
@immutable
sealed class TimerState {}

final class TimerInitial extends TimerState {}

final class DecreaseRemainingTimeState extends TimerState {}
final class SwitchStatusState extends TimerState {}
final class ResetTimerState extends TimerState {}
final class StopTimerState extends TimerState {}
final class FinishPomodoroCyclesState extends TimerState {}
final class StopAndResetAllValuesState extends TimerState {}
