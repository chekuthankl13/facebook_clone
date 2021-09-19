import 'package:flutter/material.dart';

class ActivitySection extends StatelessWidget {
  final Widget buttonOne;
  final Widget buttonTwo;
  final Widget buttonThree;

  ActivitySection(
      {@required this.buttonOne,
      @required this.buttonTwo,
      @required this.buttonThree});
  @override
  Widget build(BuildContext context) {
    Widget divider = VerticalDivider(
      color: Colors.grey[300],
      thickness: 1,
      width: 20,
    );
    return Container(
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [buttonOne, divider, buttonTwo, divider, buttonThree],
      ),
    );
  }
}
