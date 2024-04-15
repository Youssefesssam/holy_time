import 'package:flutter/material.dart';
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
        SplashScreen.routeName:(_)=>SplashScreen()
      },
      initialRoute:HomeScreenUsers.routeName ,// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
