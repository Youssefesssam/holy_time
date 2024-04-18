import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';


class SliderPic extends StatelessWidget {
  SliderPic({super.key});
  static const String routeName ="sliderPic";

  List<Widget> pic =[

    Card(
      elevation: 10,
      child: Container(
        width: 200,
        color: const Color(0xff9d9d9d),
        child:const Text("event",
          style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold
          ),
          textAlign:TextAlign.center,
        ) ,
      ),
    ),
    Card(
      elevation: 10,
      child: Container(
        width: 200,
        color: const Color(0xff9d9d9d),
        child:const Text("Teem",
          style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold
          ),
          textAlign:TextAlign.center,
        ) ,
      ),
    ),
    Card(
      elevation: 10,
      child: Container(
        width: 200,
        color: const Color(0xff9d9d9d),
        child:const Text("Task",
          style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold
          ),
          textAlign:TextAlign.center,
        ) ,
      ),
    ),
   ];
  final CarouselController _carouselController = CarouselController();
  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          InkWell(
            onTap: () {},
            child: CarouselSlider(
                items: pic,
                options: CarouselOptions(
                  height: 150,
                  viewportFraction: .5,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 2),
                  autoPlayAnimationDuration: const Duration(seconds: 1),
                  autoPlayCurve: Curves.easeInOut,
                  enlargeCenterPage: true,
                  enlargeFactor: 0.3,
                  scrollDirection: Axis.horizontal,
                )
            ),
          ),

        ],


    );
  }
}
