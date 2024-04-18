import 'package:flutter/material.dart';
import 'package:holy_time/ui/screens/charts.dart';
import 'package:holy_time/ui/screens/slide.dart';
import 'package:holy_time/utilites/appAssets.dart';

class HomeScreenUsers extends StatelessWidget {
  const HomeScreenUsers({super.key});

  static const String routeName = "homeScreenUsers";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            margin: const EdgeInsets.all(30),
            child: const Column(
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
                    Icon(Icons.settings)
                  ],
                ),
              ],
            ),
          ),
          Container(
              margin: const EdgeInsets.only(top: 10, left: 30),
              child: const Text(
                "Range attendas",
                textAlign: TextAlign.start,
                style: TextStyle(fontSize: 20),
              )),
          SizedBox(height: 10,),
          Expanded(flex: 5,child: Charts()),
          Container(
            margin: EdgeInsets.all(20),
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    
                    child:Center(child:
                    Card( 
                        color: Color(0xff9d9d9d),
                        child: Text("Total",
                          style: TextStyle(fontSize: 20),)
                    )) ,
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    child:Center(child:
                    Card(
                        color: Color(0xff9d9d9d),
                        child: Text("Total",
                          style: TextStyle(fontSize: 20),)
                    )) ,
                  ),
                ),
              ],
            ),
          ),
          Card(
            child: Container(
              color: Colors.blueAccent,
              height: 100,
            ),
          ),
          Card(
            child: Container(
              color: Colors.blueAccent,
              height: 100,
            ),
          ),
          const Spacer(),
          SliderPic(),
          const SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
