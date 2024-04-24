
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:holy_time/ui/screens/features/slider/event/event.dart';

import 'designCard/designCard.dart';


class SliderPic extends StatelessWidget {
  SliderPic({super.key});
  static const String routeName ="sliderPic";

  List<Widget> pic =[
    DesignCard(titleCard: "event", color: Colors.black,),
    DesignCard(titleCard: "task", color: Colors.black,),
    DesignCard(titleCard: "teem", color: Colors.black,),
  ];
  final CarouselController _carouselController = CarouselController();
  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, EventScreen.routeName);
            },
            child: CarouselSlider(
                items: pic,
                options: CarouselOptions(
                  height: 200,
                  viewportFraction: .4,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds:2),
                  autoPlayAnimationDuration: const Duration(seconds: 2),
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
