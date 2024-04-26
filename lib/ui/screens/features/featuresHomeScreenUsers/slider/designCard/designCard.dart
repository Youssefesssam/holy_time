import 'package:flutter/material.dart';

class DesignCard extends StatelessWidget {
  String titleCard = "";
  Color color = Colors.white;
  String? path;


  DesignCard({
    super.key,
    required this.titleCard,
    required this.color,
    this.path,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Opacity(
          opacity: .3,
          child: Card(
            elevation: 20,
            child: Container(
              color: Colors.white,
            ),
          ),
        ),
        Text(
          titleCard,
          style: TextStyle(
            color: color,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        if (path != null && path!.isNotEmpty)
          Center(
            child: Image.asset(
              path!,
              height: MediaQuery.of(context).size.height * .15,
              width: MediaQuery.of(context).size.width * .15,
            ),
          ),
      ],
    );
  }
}