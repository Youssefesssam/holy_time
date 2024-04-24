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
        HomeScreenLeaders.routeName:(_)=>HomeScreenLeaders(),
        HomeScreenUsers.routeName:(_)=>HomeScreenUsers(),
        SplashScreen.routeName:(_)=>SplashScreen(),
        LoginScreen.routeName:(_)=>LoginScreen(),
        RegisterScreen.routeName:(_)=>RegisterScreen(),
        Charts.routeName:(_)=>Charts(),
        Setting.routeName:(_)=>Setting(),
        EventScreen.routeName:(_)=>EventScreen(),
        TeemScreen.routeName:(_)=>TeemScreen(),
        TaskScreen.routeName:(_)=>TaskScreen(),
      },
      initialRoute:SplashScreen.routeName ,// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
