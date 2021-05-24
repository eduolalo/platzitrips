import 'package:flutter/material.dart';
import 'package:platzi_tripss_app/card_image_list.dart';
import 'profile_header_appbar.dart';
import 'profile_photo.dart';
import 'action_list.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: [
        ProfileHeaderAppBar(),
        ListView(
          children: <Widget>[
            ProfilePhoto(),
            ActionList(),
            CardImageList(Axis.vertical, 390.0)
          ],
        ),

      ],
    );

  }

}