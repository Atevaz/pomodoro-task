import 'package:fimple_task/presentations/screens/splash_screen.dart';
import 'package:fimple_task/utils/cach_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'cubit/bloc_observer.dart';
import 'cubit/timer_cubit.dart';

void main()async  {
  // ensure that the Flutter framework is fully initialized before running any code :
  WidgetsFlutterBinding.ensureInitialized();
  // initialize BlocObserver to listen states of all cubits that used
  Bloc.observer = MyBlocObserver();
  // initialize shared preferences
  await CashHelper.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => TimerCubit()),
      ],
      child: ScreenUtilInit( // for responsive design
        minTextAdapt: true,
        designSize: const Size(375, 812),
        splitScreenMode: true,
        builder:(context,widget) => const MaterialApp(
          title: 'Pomodoro Timer',
          debugShowCheckedModeBanner: false,
          home: SplashScreen(),
        ),
      ),
    );
  }
}