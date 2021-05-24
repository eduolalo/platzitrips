import 'package:flutter/material.dart';
import 'card_image.dart';

class CardImageList extends StatelessWidget {
  Axis direccion = Axis.horizontal;
  double height;
  CardImageList(this.direccion, this.height);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      child: ListView(
        padding: EdgeInsets.all(25.0),
        scrollDirection: direccion,
        children: <Widget>[
          CardImage("assets/img/quecas1.jpg"),
          CardImage("assets/img/quecas2.jpg"),
          CardImage("assets/img/quecas3.jpg"),
        ],
      ),
    );
  }
}