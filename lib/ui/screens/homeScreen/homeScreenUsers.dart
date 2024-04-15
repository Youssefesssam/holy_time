import 'package:flutter/material.dart';

class HomeScreenUsers extends StatelessWidget {
  const HomeScreenUsers({super.key});
  static const String routeName ="homeScreenUsers";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(40),
        child: Column(
          children: [
            CircleAvatar(radius: 20,)
          ],
        ),
      ),
    );
  }
}
