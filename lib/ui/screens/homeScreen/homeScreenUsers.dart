import 'package:flutter/material.dart';
import 'package:holy_time/ui/screens/features/appBarUser/appBarUser.dart';
import 'package:holy_time/ui/screens/features/slider/designCard/designCard.dart';
import '../../../utilites/appAssets.dart';
import '../features/chartScatter/chartScatter.dart';
import '../features/slider/slide.dart';

class HomeScreenUsers extends StatelessWidget {
  const HomeScreenUsers({super.key});

  static const String routeName = "homeScreenUsers";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage(AppAssets.backGround),fit: BoxFit.fill
        )),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
                margin: const EdgeInsets.only(
                    left: 30, right: 30, top: 30, bottom: 20),

                child: const AppBarUser()),

      Container(
          margin: const EdgeInsets.only(left: 30),
          child: Row(
            children: [
              const Text(
                "Rank#",
                style: TextStyle(fontSize: 25),
              ),
              const Spacer(),
              Container(
                margin: const EdgeInsets.only(right: 30),
                child: const Text(
                  "I attended",
                  style: TextStyle(fontSize: 25),
                ),
              )
            ],
          )),
      Container(
        padding: const EdgeInsets.only(left: 30, top: 10,right: 30),
        child: Row(
          children: [
            Card(
              elevation: 10,
              child: Container(
                decoration: BoxDecoration(
                    color: const Color(0xffffba00),
                    borderRadius: BorderRadius.circular(10)
                ),
                height: 50,
                width: 90,
                child: const Center(
                    child: Text(
                      '1#',
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    )),
              ),
            ),
            const Spacer(),
            Card(
              elevation: 10,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xeaf84c4c),
                ),
                height: 50,
                width: 100,
                child: const Center(
                    child: Text(
                      '5%',
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    )),
              ),
            )
          ],)),
            Container(
                margin: const EdgeInsets.only(top: 10, left: 30),
                child: const Text(
                  "Range attendas",
                  textAlign: TextAlign.start,
                  style: TextStyle(fontSize: 20),
                )),
            const SizedBox(
              height: 10,
            ),
            const Expanded(flex: 5, child: ChartScatter()),
            Container(
                margin: const EdgeInsets.only(left: 20, bottom: 20),
                child: const Text(
                  "Contents",
                  style: TextStyle(fontSize: 25),
                )),

            Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              height: MediaQuery.of(context).size.height*.13,
              child: Row(
                children: [
                  Expanded(
                      flex:1,
                      child: DesignCard(
                    titleCard: "points",
                    color: Colors.black,
                  )),
                  Expanded(
                    flex: 1,
                      child: DesignCard(titleCard: "A Weeekly Word", color: Colors.black)),
                  Expanded(
                    flex: 1,
                      child: DesignCard(titleCard: "sss", color: Colors.black)),
                ],
              ),
            ),

            SliderPic(),

          ],
        ),
      ),
    );
  }
}
