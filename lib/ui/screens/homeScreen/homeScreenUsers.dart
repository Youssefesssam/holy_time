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
            image: AssetImage(AppAssets.backGround),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              margin: const EdgeInsets.only(
                left: 30,
                right: 30,
                top: 30,
                bottom: 10,
              ),
              child: const AppBarUser(),
            ),
            Stack(
              alignment: Alignment.topCenter,
              children: [
                Opacity(
                  opacity: .3,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey,
                    ),
                    margin: const EdgeInsets.symmetric(horizontal: 70),
                    padding: const EdgeInsets.all(10),
                    child: const Row(
                      children: [
                        Column(
                          children: [
                            Text(
                              "1#",
                              style: TextStyle(fontSize: 45),
                            ),
                            SizedBox(height: 5,),
                            Text("Rank#"),
                          ],
                        ),

                      ],
                    ),
                  ),
                ),
                const Positioned(
                  right: 110,
                  top: 20,
                  child: Column(
                    children: [
                      SizedBox(
                        width: 50, // Adjust the width as needed
                        height: 50, // Adjust the height as needed
                        child: CircularProgressIndicator(
                          strokeCap: StrokeCap.round,
                          value: 0.3,
                          color: Color(0xff904ff2),
                          backgroundColor: Colors.white54,
                          strokeWidth: 9,
                        ),
                      ),
                      SizedBox(height: 10,),
                      Text("Attend",style: TextStyle(color:Colors.grey),)
                    ],
                  ),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 10, left: 30),
              child: const Text(
                "Range attendas",
                textAlign: TextAlign.start,
                style: TextStyle(fontSize: 20),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Expanded(flex: 5, child: ChartScatter()),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 20, bottom: 20),
                  child: const Text(
                    "Contents",
                    style: TextStyle(fontSize: 25),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 5, bottom: 20),
                  child: Image.asset(
                    "assets/icons/content.png",
                    height: 30,
                    width: 40,
                  ),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              height: MediaQuery.of(context).size.height * .13,
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: DesignCard(
                      titleCard: "points",
                      path: AppAssets.bestScore,
                      color: Colors.black,
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: DesignCard(
                      titleCard: "A Weeekly Word",
                      color: Colors.black,
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: DesignCard(
                      path: AppAssets.bestScore,
                      titleCard: "sss",
                      color: Colors.black,
                    ),
                  ),
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
