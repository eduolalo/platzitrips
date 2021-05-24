import 'package:flutter/material.dart';

class MenuAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: MenuClipper(),
      child: Container(
        height: 130.0,
        decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover, image: AssetImage("assets/img/quecas1.jpg")),
        ),
        child: Center(
          child: Text(
            "Ingredientes",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
              fontFamily: "Ubuntu",
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
      ),
    );
  }
}

class MenuClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var fStart = Offset((size.width / 6.0), (size.height - 40.0));
    var fEnd =
        Offset((size.width / 2.0 - size.width / 6.0), (size.height - 20.0));
    var sStart = Offset((size.width / 2.0), (size.height - 5.0));
    var sEnd =
        Offset((size.width / 2.0 + size.width / 6), (size.height - 20.0));
    var tStart = Offset(size.width - (size.width / 6.0), (size.height - 40.0));
    var tEnd = Offset(size.width, (size.height - 40.0));

    final Path path = new Path()
      ..lineTo(0, size.height - 40)
      ..quadraticBezierTo(fStart.dx, fStart.dy, fEnd.dx, fEnd.dy)
      ..quadraticBezierTo(sStart.dx, sStart.dy, sEnd.dx, sEnd.dy)
      ..quadraticBezierTo(tStart.dx, tStart.dy, tEnd.dx, tEnd.dy)
      ..lineTo(size.width, 0)
      ..close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
