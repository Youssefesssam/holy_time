import 'package:flutter/material.dart';
import 'package:holy_time/utilites/appAssets.dart';
import '../features/featuresHomeScreenLeaders/ScreenHomeLeaders/screenHomeLeaders.dart';
import '../features/featuresHomeScreenLeaders/appBarLeaders/attendManual/attendManual.dart';
import '../features/featuresHomeScreenUsers/appBarUser/setting/setting.dart';



class HomeScreenLeaders extends StatefulWidget {
  static const String routeName = "screenHomeLeaders";
  const HomeScreenLeaders({super.key,});
  @override
  _HomeScreenLeaders createState() => _HomeScreenLeaders();
}
class _HomeScreenLeaders extends State<HomeScreenLeaders> {
  int currentTapIndex = 0;
  List <Widget> screen =[ ScreenHomeLeaders(),const Setting()];
  Widget currentTab = ScreenHomeLeaders();
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:  const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(AppAssets.backGround),fit: BoxFit.fill
          )
      ),
      child:  Scaffold(
        appBar: AppBar(

          title: Row(
              children:[

                const Spacer(),
                 const Text("list Users",
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                const Spacer(),
                InkWell(
                  onTap: (){
                    Navigator.pushNamed(context, AttendManual.routeName);
                  },
                  child: Container(
                    margin: const EdgeInsets.all(5),
                    child: const Column(
                      children: [
                        Icon(Icons.man,size: 35,),
                        SizedBox(width:10,),
                        Text("Manual",style: TextStyle(fontSize: 12),)
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(5),
                  child: const Column(
                    children: [
                      Icon(Icons.qr_code_scanner_outlined,size: 35,),
                      SizedBox(width:10,),
                      Text("Qr code",style: TextStyle(fontSize: 12),),
                    ],
                  ),
                ),

              ]
          ),

          toolbarHeight: (65),
          backgroundColor:const Color(0x44aaaaff),

        ),
        backgroundColor:Colors.transparent ,
        bottomNavigationBar: bildBottomNavigation(),
        body: currentTab,

      ),
    );
  }


  Widget bildBottomNavigation()=> Container(
    margin: EdgeInsets.all(10),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(40),
    ),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(40),
      child: BottomNavigationBar(
        backgroundColor: Colors.transparent,
          selectedItemColor:  Colors.teal,
          items: [
            BottomNavigationBarItem(
              icon: _buildIconWithGlow(Icons.list, currentTapIndex == 0),
              label: 'List',
            ),
            BottomNavigationBarItem(
              icon: _buildIconWithGlow(Icons.settings, currentTapIndex == 1),
              label: 'Settings',
            ),
          ],
          currentIndex: currentTapIndex,
          onTap:(index){
            currentTapIndex=index;
            currentTab = screen[currentTapIndex];
            setState((){});
          } ,

        ),
    ),
  );
  BottomNavigationBarItem bottomNavigationBarItem(
      IconData imagepath,String text
      ) => BottomNavigationBarItem(icon:Icon(imagepath,size: 30,) ,label: text ,) ;
}
Widget _buildIconWithGlow(IconData icon, bool isSelected) {
  return Stack(
    alignment: Alignment.center,
    children: [
      AnimatedContainer(
        duration: Duration(milliseconds: 300),
        width: isSelected ? 60.0 : 0.0,
        height: isSelected ? 60.0 : 0.0,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: isSelected ? Colors.teal.withOpacity(0.3) : Colors.transparent,
        ),
      ),
      Icon(size: 30,icon, color: isSelected ? Colors.teal : Colors.black),
    ],
  );
}


