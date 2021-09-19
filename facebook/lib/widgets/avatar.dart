import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  final String image;
  final bool onlineindicator;
  final bool displayborder;
  final double avatarheight;
  final double avatarwidth;

  Avatar(
      {@required this.image,
      @required this.onlineindicator,
      this.displayborder = false,
      this.avatarheight = 50,
      this.avatarwidth = 50,
      });
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.only(
            left: 5,
            right: 5,
          ),
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: displayborder
                  ? Border.all(
                      color: Colors.blueAccent,
                      width: 3,
                    )
                  : Border()),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.asset(
              image,
              height: avatarheight,
              width: avatarwidth,
              fit: BoxFit.fill,
            ),
          ),
        ),
        onlineindicator
            ? Positioned(
                bottom: 3,
                right: 5,
                child: Container(
                  height: 10,
                  width: 10,
                  decoration: BoxDecoration(
                      color: Colors.greenAccent,
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.white,
                        width: 2,
                      )),
                ),
              )
            : SizedBox(),
      ],
    );
  }
}
