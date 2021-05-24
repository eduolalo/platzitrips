import 'package:flutter/material.dart';
import 'gradientProfile.dart';

class ProfileHeaderAppBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Stack(
      children: <Widget>[
        GradientProfile("Perfil: "),
        //CardImageList()
      ],
    );
  }
}