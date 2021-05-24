import 'package:flutter/material.dart';
import 'review.dart';

class ReviewList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Review("", "Edu", "", "Estaban ricolinas las quecorras"),
        Review("", "Edu", "", "Me dio chorro explosivo >:'v"),
        Review("", "Edu", "", "Voy por otras ahora mismo xD"),
        Review("", "Edu", "", "Le invitaré a mi compi unas quecas."),
        Review("", "Edu", "", "Estamos velando a mi compi :'c")
      ],
    );
  }
}
