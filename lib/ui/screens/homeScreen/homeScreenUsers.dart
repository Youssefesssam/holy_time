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

            Opacity(
              opacity: .5,
              child: Card(
                margin: const EdgeInsets.only(left: 60,right: 60),                borderOnForeground: true,
                semanticContainer: true,
                elevation: 10,
                child: Container(
                  padding: EdgeInsets.all(10),
                    child: const Row(
                      children: [
                        Column(
                          children: [
                            Text("1#",style: TextStyle(fontSize: 45),),
                           SizedBox(height: 5,),
                            Text("Rank#"),
                          ],
                        ),
                        Spacer(),
                        Column(
                          children: [
                            Text("5%",style: TextStyle(fontSize: 45)),
                            SizedBox(height: 5,),
                            Text("I attentent"),
                          ],
                        ),



                      ],
                    )),
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
