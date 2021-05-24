import 'package:flutter/material.dart';
import 'home_trips.dart';
import 'search_trip.dart';
import 'profile.dart';

class PlatziTrips extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _PlatziTrips();
  }

}

class _PlatziTrips extends State<PlatziTrips>{

  int indexTab = 0;
  void onTapTapped(int index) {

    setState(() {
      indexTab = index;
    });
  }

  final List<Widget> widgetsChildren = [
    HomeTrips(),
    SearchTrips(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: widgetsChildren[indexTab],
        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
            canvasColor: Colors.white,
            primaryColor: Colors.purple,
          ),
          child: BottomNavigationBar(
            onTap: onTapTapped,
              currentIndex: indexTab,
              items: [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: ""
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.search),
                  label: ""
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  label: ""
                )
              ]
          ),
        ));
  }

}