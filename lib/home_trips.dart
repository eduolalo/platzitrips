import 'package:flutter/material.dart';
import 'description_place.dart';
import 'review_list.dart';
import 'header_appbar.dart';
class HomeTrips extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Stack(
      children: <Widget>[
        ListView(
          children: <Widget>[
            DescriptionPlace("Juana Pepa", 4,
                "Están buenillas, no son lo mejor pero jalan. Sus quecas son como una ruleta rusa, pueden no hacerte daño, pero si te toca una... vas a tener un \"Córrele que te alcanzo\" imprecionanate."),
            ReviewList(),
          ],
        ),
        HeaderAppBar(),
      ],
    );
  }
  
}