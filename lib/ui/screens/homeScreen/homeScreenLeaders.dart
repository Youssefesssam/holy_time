import 'package:flutter/material.dart';

import '../../../utilites/appAssets.dart';
import '../features/appBarUser/appBarUser.dart';

class HomeScreenLeaders extends StatelessWidget {
  static const String routeName = "homeScreenLeaders";

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
            const Text(
              "Attendance List",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30),
            ),
            Expanded(
                child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (BuildContext context, int index) {
                      if (index % 2 == 0) {
                        return AttendCard(co: false);
                      } else {
                        return AttendCard(co: true);
                      }
                    }))
          ],
        ),
      ),
      /*bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xffd8d8da),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Profile',
          ),
        ],
        currentIndex: 0, // Set the initial index of the selected item
        selectedItemColor: Colors.blue,
        onTap: (int index) {
          // Handle navigation to different tabs here
        },
      ),*/
    );
  }
}

class AttendCard extends StatelessWidget {
  bool? co;

  AttendCard({this.co});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Card(
          color: co == true
              ? Colors.white.withOpacity(.5)
              : Colors.grey.withOpacity(.5),
          child: const Column(
            children: [
              Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage(AppAssets.profile),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Tantoon",
                      style: TextStyle(fontSize: 25),
                    )
                  ],
                ),
              ),

            ],
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Container(
          height: 200,
          width: 200,
          child: Card(
            color: co == false
                ? Colors.white.withOpacity(.5)
                : Colors.grey.withOpacity(.5),
            child: const Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage(AppAssets.profile),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Tantoon",
                        style: TextStyle(fontSize: 25),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
