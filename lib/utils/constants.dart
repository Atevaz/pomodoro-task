// all default values that used to handle pomodoro task

enum SessionType { focus, shortBreak }

SessionType defaultSessionType = SessionType.focus ;

int defaultFocusTime = 1 * 2 ;
int defaultBreakTime = 1 * 2 ;
int defaultBreakPomodoroCycles = 2 ;

List<int> focusDurationList = [15, 25, 30, 45] ;
int selectedFocusDuration = 25  ;

List<int> breakDurationList = [5, 7, 10] ;
int selectedBreakDuration = 5  ;

List<int> pomodoroCyclesList = [2, 3, 4, 5, 6] ;
int selectedPomodoroCycles = 2  ;

