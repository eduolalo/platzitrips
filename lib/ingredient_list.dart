import 'package:flutter/material.dart';
import 'ingredient.dart';

class IngredientList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 130.0, left: 20.0, right: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Ingredient("quesillo.png", "Queso Oaxaca",
              "Este ingrediente \nes agregado por default."),
          Ingredient("chicharron.png", "Chicharrón prensado",
              "Delicioso prensado \nguisado con amor <3."),
          Ingredient("hongos.png", "Champiñones",
              "Guisados con \ncebollita,\nperfecto para una queca fit."),
          Ingredient("papaschoriso.png", "Choriso en papas",
              "Deliciosa\ncombinación ganadora."),
          Ingredient("tingapollo.png", "Tinga de pollo",
              "Guiso de pollo\ndesebrado con un toque\nde chipotle."),
          Ingredient("rajas.png", "Rajas poblanas",
              "Chile poblano\nen rajas\ncon elote, no pica."),
          Ingredient("tingares.png", "Tinga de res",
              "Res desebrada\nen guisado\ncon un toque de chipotle."),
        ],
      ),
    );
  }
}
