import 'package:flutter/material.dart';

class ProfilePhoto extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final name = Container(
      margin: EdgeInsets.only(
          left: 20.0,
          top: 49.0
      ),
      child: Text(
      'Edu',
      textAlign: TextAlign.left,
        style: TextStyle(fontFamily: "Ubuntu",fontSize: 17.0, color: Colors.white),
      )
    );
    final email = Container(
      margin: EdgeInsets.only(left: 20.0),
      child: Text(
        'micorreo@chidito.com',
        textAlign: TextAlign.left,
        style: TextStyle(
          fontSize: 12.0,fontWeight: FontWeight.w900,fontFamily: "Ubuntu", color: Colors.white54
        ),
      ),
    );
    final photo = Container(
      margin: EdgeInsets.only(top: 20.0,left: 20.0),
      width: 80.0,
      height: 80.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/img/edu.jpg")
        )
      ),
    );
    final profileData = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [name,email],
    );
    return Container(
      margin: EdgeInsets.only(
        top: 99.0
      ),
      child:  Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          photo,profileData
        ],
      ),
    );
  }


}