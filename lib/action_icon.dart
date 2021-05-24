import 'package:flutter/material.dart';

class ActionIcon extends StatelessWidget {
  IconData icon;
  double size = 50.0;
  ActionIcon(this.icon, this.size);
  @override
  Widget build(BuildContext context) {

    return Container(
      margin: EdgeInsets.only(left: 18.0),
      width: this.size,
      height: this.size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white.withAlpha(200)
      ),
      child: Icon(
        icon,
        size: (this.size - 10.0),
        color: Colors.deepPurpleAccent,
      ),
    );
  }
}