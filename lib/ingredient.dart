import 'package:flutter/material.dart';

class Ingredient extends StatelessWidget {
  String imgName = "";
  String name = "";
  String details = "";
  Ingredient(this.imgName, this.name, this.details);

  @override
  Widget build(BuildContext context) {
    final ingName = Container(
      margin: EdgeInsets.only(left: 20.0),
      child: Text(name,
          textAlign: TextAlign.left,
          style: TextStyle(fontSize: 17.0, fontFamily: "Ubuntu")),
    );
    final ingDetail = Container(
      margin: EdgeInsets.only(left: 20.0),
      child: Text(
        details,
        textAlign: TextAlign.left,
        style: TextStyle(
            fontSize: 13.0, fontWeight: FontWeight.w900, fontFamily: "Ubuntu"),
      ),
    );
    final description = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[ingName, ingDetail],
    );
    final photo = Container(
      margin: EdgeInsets.only(top: 20.0, left: 20.0),
      width: 80.0,
      height: 80.0,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
              fit: BoxFit.cover, image: AssetImage("assets/img/" + imgName))),
    );

    return Row(
      children: <Widget>[photo, description],
    );
  }
}
