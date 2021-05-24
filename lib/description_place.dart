import 'package:flutter/material.dart';
import 'button_purple.dart';

class DescriptionPlace extends StatelessWidget {
  String namePlace;
  int stars;
  String descriptionText;

  DescriptionPlace(this.namePlace, this.stars, this.descriptionText);
  @override
  Widget build(BuildContext context) {
    final star = Container(
      margin: EdgeInsets.only(
        top: 323.0,
        right: 3.0,
      ),
      child: Icon(
        Icons.star,
        color: Colors.amber,
      ),
    );

    final starBorder = Container(
      margin: EdgeInsets.only(
        top: 323.0,
        right: 3.0,
      ),
      child: Icon(
        Icons.star_border,
        color: Colors.amber,
      ),
    );

    final tittleStars = Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 320.0, left: 20.0, right: 20.0),
          child: Text(namePlace,
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w900,
                  fontFamily: "Ubuntu")),
        ),
        Row(children: <Widget>[star, star, star, star, starBorder])
      ],
    );

    final description = Container(
      margin: EdgeInsets.only(top: 9.0, left: 21.0, right: 21.0),
      child: Text(descriptionText,
          style: TextStyle(color: Colors.grey, fontFamily: "Ubuntu")),
    );
    final main = Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[tittleStars, description, ButtonPurple("Navegar")]);
    return main;
  }
}
