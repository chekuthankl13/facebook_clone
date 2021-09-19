import 'package:facebook/images.dart';
import 'package:flutter/material.dart';

class FriendSuggestion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10),
      width: 300,
      child: Stack(
        children: [dp(), footer()],
      ),
    );
  }

  Widget dp() {
    return Positioned(
      left: 0,
      top: 0,
      right: 0,
      child: ClipRRect(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10), topRight: Radius.circular(10)),
        child: Image.asset(
          ab,
          height: 200,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget footer() {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
        height: 150,
        child: Column(
          children: [
            ListTile(
              title: Text('kiranlal'),
              subtitle: Text('i mutalfriend'),
            ),
            Container(
              padding: EdgeInsets.only(left: 4,right: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  btn(
                    buttonAction: () {},
                    buttonColor: Colors.blue[700],
                    text: 'Add Friend',
                    buttonTextcolor: Colors.white,
                    buttonIcon: Icons.verified_user,
                    iconcolor: Colors.white,
                  ),
                  btn2(
                      buttonAction: () {},
                      buttonColor: Colors.grey,
                      buttonText: 'Remove',
                     )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget btn({
    @required void Function() buttonAction,
    @required Color buttonColor,
    @required String text,
    @required Color buttonTextcolor,
    @required IconData buttonIcon,
    @required Color iconcolor,
  }) {
    return FlatButton.icon(
      color: buttonColor,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(5))),
      onPressed: buttonAction,
      icon: Icon(
        buttonIcon,
        color: iconcolor,
      ),
      label: Text(
        text,
        style: TextStyle(color: buttonTextcolor),
      ),
    );
  }

 Widget btn2({
   @required void Function() buttonAction,
   @required Color buttonColor,
   @required String buttonText,

 }){
   return FlatButton(
     color: buttonColor,
     onPressed: buttonAction,
     child: Text(buttonText),
   );
 }
}
