import 'package:flutter/material.dart';
import 'package:holy_time/ui/screens/features/appBarUser/appBarUser.dart';
import 'package:holy_time/ui/screens/features/chartsDigram/charts.dart';
import 'package:holy_time/ui/screens/features/slider/designCard/designCard.dart';
import 'package:holy_time/utilites/appAssets.dart';
import '../features/slider/slide.dart';

class HomeScreenUsers extends StatelessWidget {
  const HomeScreenUsers({super.key});

  static const String routeName = "homeScreenUsers";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(AppAssets.backgrond2),fit: BoxFit.fill)
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
                margin: const EdgeInsets.only(
                    left: 30, right: 30, top: 30, bottom: 10),
                child: const AppBarUser()),
            Container(

                margin: const EdgeInsets.only(left: 30),
                child: Row(
                  children: [
                    const Text(
                      "Rank#",
                      style: TextStyle(fontSize: 20),
                    ),
                    const Spacer(),
                    Container(
                      margin: const EdgeInsets.only(right: 30),
                      child: const Text("I attended", style: TextStyle(fontSize: 20),),
                    )
                  ],
                )),
            Container(
              margin: const EdgeInsets.only(left: 30, top: 10),
              child: Row(
                children: [
                  Expanded(
                    child: Card(
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                          color: const Color(0xffffba00),
                        ),
                        height: 50,
                        width: 50,

                        child: const Center(
                            child: Text(
                          '1#',
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        )),
                      ),
                    ),
                  ),
                  const Spacer(),
                  Container(
                    margin: const EdgeInsets.only(right: 30),
                    child: Expanded(
                      child: Card(
                        elevation: 10,
                        child: Container(
                          height: 50,
                          width: 70,
                          color: const Color(0xffee0000),
                          child: const Center(
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
            Container(
              margin:EdgeInsets.all(5),
                decoration:BoxDecoration(borderRadius: BorderRadius.circular(20),),
              height: 100,
              child: Row(
                children: [
                  Expanded(
                  child: DesignCard(titleCard: "sss",color: Colors.black,)),
                  Expanded(
                      child: DesignCard(titleCard: "sss",color: Colors.black)),
                  Expanded(
                      child: DesignCard(titleCard: "sss",color: Colors.black)),

                ],
              ),
            ),
            const Spacer(),
            SliderPic(),
            const SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
