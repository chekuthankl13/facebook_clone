import 'package:facebook/images.dart';
import 'package:facebook/widgets/avatar.dart';
import 'package:flutter/material.dart';

class RoomSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.all(15),
        children: [
          room(),
          Avatar(
            image: klm,
            onlineindicator: true,
          ),
          Avatar(
            image: ab,
            onlineindicator: true,
          ),
          Avatar(
            image: cd,
            onlineindicator: true,
          ),
          Avatar(
            image: jk,
            onlineindicator: true,
          ),
          Avatar(
            image: klm,
            onlineindicator: true,
          ),
          Avatar(
            image: klm,
            onlineindicator: true,
          ),
        ],
      ),
    );
  }

  Widget room() {
    return Container(
      padding: EdgeInsets.only(right: 10),
      child: OutlinedButton.icon(
        onPressed: () {},
        icon: Icon(
          Icons.video_call,
          color: Colors.purple,
        ),
        label: Text(
          'create \n room',
          style: TextStyle(
            color: Colors.blue,
          ),
        ),
        style: OutlinedButton.styleFrom(
            shape: StadiumBorder(),
            side: BorderSide(width: 2, color: Colors.blue),
            padding: EdgeInsets.all(4)),
      ),
    );
  }
}
