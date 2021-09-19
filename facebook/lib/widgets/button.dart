import 'package:flutter/material.dart';

Widget button({
  @required IconData icon,
  @required Color color,
  @required void Function() action,
  @required Text title,
}) {
  return FlatButton.icon(
    onPressed: action,
    icon: Icon(
      icon,
      color: color,
    ),
    label: title,
  );
}
