import 'package:flutter/material.dart';

class CircleIcon extends StatelessWidget {
  final IconData appIcon;
  final void Function() iconAction;
  final Color color;

  CircleIcon({@required this.appIcon, @required this.iconAction, this.color =Colors.black});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(6),
      padding: EdgeInsets.all(4),
      decoration:
          BoxDecoration(shape: BoxShape.circle, color: Colors.grey[300]),
      child: IconButton(
        onPressed: iconAction,
        icon: Icon(appIcon),
        color: color,
      ),
    );
  }
}
