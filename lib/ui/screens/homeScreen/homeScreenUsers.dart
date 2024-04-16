import 'package:flutter/material.dart';
import 'package:holy_time/utilites/appAssets.dart';

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
            Row(
              children: [
                CircleAvatar(radius: 20,backgroundImage: AssetImage(AppAssets.splashScreen),),
                SizedBox(width: 5,),
                Text("Name",style: TextStyle(fontSize: 20),),
                Spacer(),
                Icon(Icons.control_point_sharp)
              ],
            ),
            SizedBox(height: 30,),
            Container(
              margin: EdgeInsets.all(5),
              color: Colors.black,
              width: 250,
              height: 50,
            ),
            Container(
              margin: EdgeInsets.all(5),
              color: Colors.black,
              width: 250,
              height: 50,
            ),
            Container(
              margin: EdgeInsets.all(5),
              color: Colors.black,
              width: 250,
              height: 50,
            ),
            Container(
              margin: EdgeInsets.all(5),
              color: Colors.black,
              width: 250,
              height: 50,
            ),


          ],
        ),
      ),
    );
  }

}
