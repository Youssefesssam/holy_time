import 'package:flutter/material.dart';
import 'package:holy_time/ui/screens/features/appBarUser/appBarUser.dart';
import 'package:holy_time/ui/screens/features/chartsDigram/charts.dart';
import '../features/slider/slide.dart';

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
              margin: const EdgeInsets.only(
                  left: 30, right: 30, top: 30, bottom: 10),
              child: const AppBarUser()),
          Container(
              margin: EdgeInsets.only(left: 30),
              child: Row(
                children: [
                  Text(
                    "Rank#",
                    style: TextStyle(fontSize: 20),
                  ),
                  Spacer(),
                  Container(
                    margin: EdgeInsets.only(right: 30),
                    child: Text("I attended", style: TextStyle(fontSize: 20),),
                  )
                ],
              )),
          Container(
            margin: EdgeInsets.only(left: 30, top: 10),
            child: Row(
              children: [
                Expanded(
                  child: Card(
                    elevation: 10,
                    child: Container(
                      height: 50,
                      width: 50,
                      color: Color(0xff3b3a3a),
                      child: Center(
                          child: Text(
                        '1#',
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      )),
                    ),
                  ),
                ),
                Spacer(),
                Container(
                  margin: EdgeInsets.only(right: 30),
                  child: Expanded(
                    child: Card(
                      elevation: 10,
                      child: Container(
                        height: 50,
                        width: 70,
                        color: Color(0xffee0000),
                        child: Center(
                            child: Text(
                          '5%',
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        )),
                      ),
                    ),
                  ),
                )
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
          const SizedBox(
            height: 20,
          ),
          const Expanded(flex: 5, child: Charts()),
          Container(
              margin: const EdgeInsets.only(left: 20,bottom: 20),
              child: const Text(
                "points",
                style: TextStyle(fontSize: 20),
              )),
          Card(
            child: Container(
              height: 100,
              child: Row(
                children: [
                  Expanded(
                    child: Container(margin: EdgeInsets.only(left: 10),color: Colors.green,
                      child: Center(child: Text("5",style: TextStyle(fontSize: 60),)),)),
                  Expanded(
                    child: Container(margin: EdgeInsets.only(left: 10,right: 10),color: Colors.green,
                      child: Center(child: Text("4",style: TextStyle(fontSize: 60),)),),),
                  Expanded(
                    child: Container(margin: EdgeInsets.only(right: 10),color: Colors.green,
                      child: Center(child: Text("3",style: TextStyle(fontSize: 60),)),),),
                ],
              ),
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
