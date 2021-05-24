import 'package:flutter/material.dart';

class Review extends StatelessWidget {
  String imgPath = "assets/img/edu.jpg";
  String name = "Elver Gonsuela";
  String details = "1 coment, 5 estreshas";
  String comment = "La doñita se rifa con la quecas!!";
  Review(this.imgPath, this.name, this.details, this.comment);
  @override
  Widget build(BuildContext context) {
    if (imgPath == "") {
      imgPath = "assets/img/edu.jpg";
    }
    if (details == "") {
      details = "1 coment, 5 estreshas";
    }

    final userName = Container(
      margin: EdgeInsets.only(left: 20.0),
      child: Text(name,
          textAlign: TextAlign.left,
          style: TextStyle(fontSize: 17.0, fontFamily: "Ubuntu")),
    );
    final userInfo = Container(
      margin: EdgeInsets.only(left: 20.0),
      child: Text(details,
          textAlign: TextAlign.left,
          style: TextStyle(
              fontSize: 12.0, fontFamily: "Ubuntu", color: Colors.grey)),
    );
    final userComment = Container(
      margin: EdgeInsets.only(left: 20.0),
      child: Text(comment,
          textAlign: TextAlign.left,
          style: TextStyle(
            fontSize: 13.0,
            fontWeight: FontWeight.w900,
            fontFamily: "Ubuntu",
          )),
    );
    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[userName, userInfo, userComment],
    );
    final photo = Container(
      margin: EdgeInsets.only(
        top: 20.0,
        left: 20.0,
      ),
      width: 80.0,
      height: 80.0,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image:
              DecorationImage(fit: BoxFit.cover, image: AssetImage(imgPath))),
    );
    return Row(
      children: <Widget>[
        photo,
        userDetails,
      ],
    );
  }
}
