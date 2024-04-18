import 'package:flutter/material.dart';

import '../../../../utilites/appAssets.dart';

class AppBarUser extends StatelessWidget {
  const AppBarUser({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage(AppAssets.splashScreen),
            ),
            SizedBox(
              width: 7,
            ),
            Column(
              children: [
                Text(
                  "Name",
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  "Account",
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
            Spacer(),
            Row(
              children: [
                Icon(Icons.qr_code_2_sharp),
                SizedBox(width: 5,),
                Icon(Icons.settings),
              ],
            )
          ],
        ),
      ],
    );
  }
}
