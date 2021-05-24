import 'package:flutter/material.dart';
import 'action_icon.dart';
class ActionList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {


    return Container(
      margin: EdgeInsets.only(
        top: 31.0,
        left: 20.0,
        right: 20.0,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ActionIcon(Icons.turned_in_not , 35.0),
          ActionIcon(Icons.redeem , 35.0),
          ActionIcon(Icons.add, 50.0),
          ActionIcon(Icons.mail, 35.0),
          ActionIcon(Icons.person, 35.0),
        ],
      ),
    );

  }
}