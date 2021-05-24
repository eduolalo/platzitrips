import 'package:flutter/material.dart';
import 'gradientBack.dart';
import 'card_image_list.dart';

class HeaderAppBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Stack(
      children: <Widget>[
  GradientBack("Las quecas perronas!"),
        CardImageList(Axis.horizontal, 350.0)
      ],
    );
  }
}