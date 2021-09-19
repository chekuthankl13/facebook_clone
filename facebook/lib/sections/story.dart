import 'package:facebook/widgets/avatar.dart';
import 'package:facebook/widgets/circleIcons.dart';
import 'package:flutter/material.dart';

class Story extends StatelessWidget {
  final String story;
  final String label;
  final String avatar;
  final bool createstorystatus;

  Story({
    @required this.story,
    @required this.label,
    @required this.avatar,
    this.createstorystatus = false,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      margin: EdgeInsets.only(top: 5, bottom: 8, left: 5, right: 3),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        image: DecorationImage(
          image: AssetImage(story),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            left: 5,
            top: 5,
            child: createstorystatus
                ? CircleIcon(
                    color: Colors.blue,
                    appIcon: Icons.add,
                    iconAction: () {
                      print("you clicked add button 1");
                    },
                  )
                : Avatar(
                    image: avatar,
                    onlineindicator: false,
                    displayborder: true,
                    avatarheight: 35,
                    avatarwidth: 35,
                  ),
          ),
          Positioned(
            bottom: 10,
            right: 30,
            child: Text(
              label != null ? label : 'N/A',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
