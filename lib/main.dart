import 'package:flutter/material.dart';
import 'package:holy_time/ui/screens/auth/loginScreen/loginScreen.dart';
import 'package:holy_time/ui/screens/auth/registerScreen/regsterScreen.dart';
import 'package:holy_time/ui/screens/features/chartsDigram/charts.dart';
import 'package:holy_time/ui/screens/features/setting/setting.dart';
import 'package:holy_time/ui/screens/features/slider/event/event.dart';
import 'package:holy_time/ui/screens/features/slider/task/task.dart';
import 'package:holy_time/ui/screens/features/slider/teem/teem.dart';
import 'package:holy_time/ui/screens/homeScreen/homeScreenLeaders.dart';
import 'package:holy_time/ui/screens/homeScreen/homeScreenUsers.dart';
import 'package:holy_time/ui/screens/splashScreen/splashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        HomeScreenLeaders.routeName:(_)=> HomeScreenLeaders(),
        HomeScreenUsers.routeName:(_)=> HomeScreenUsers(),
        SplashScreen.routeName:(_)=>const SplashScreen(),
        LoginScreen.routeName:(_)=>const LoginScreen(),
        RegisterScreen.routeName:(_)=>const RegisterScreen(),
        Charts.routeName:(_)=>const Charts(),
        Setting.routeName:(_)=>const Setting(),
        EventScreen.routeName:(_)=>const EventScreen(),
        TeemScreen.routeName:(_)=>const TeemScreen(),
        TaskScreen.routeName:(_)=>const TaskScreen(),
      },
      initialRoute:HomeScreenUsers.routeName ,// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}