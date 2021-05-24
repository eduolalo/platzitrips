import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'home_trips.dart';
import 'search_trip.dart';
import 'profile.dart';

class PlatziTripsCupertino extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      bottomNavigationBar: CupertinoTabScaffold(

        tabBar: CupertinoTabBar(
          backgroundColor: Colors.white.withAlpha(70),
        items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Colors.indigo,),
              label: ""
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.search, color: Colors.indigo,),
                label: ""
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.person, color: Colors.indigo,),
                label: ""
            ),
        ],

        ),
        tabBuilder: (BuildContext context, int index) {

          Widget tab;
          switch (index) {
            case 0:
              tab = CupertinoTabView(
                builder: (BuildContext context) => HomeTrips(),
              );
              break;
            case 1:
              tab =  CupertinoTabView(
                builder: (BuildContext context) => SearchTrips(),
              );
              break;
            case 2:
              tab = CupertinoTabView(
                builder: (BuildContext context) => Profile(),
              );
              break;
          }
          return tab;
        },
      ),
    );
  }
  
}