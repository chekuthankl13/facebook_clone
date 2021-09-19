import 'package:facebook/images.dart';
import 'package:facebook/widgets/avatar.dart';
import 'package:flutter/material.dart';

class Status extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Avatar(
        image: klm,
        onlineindicator: false,
      ),
      title: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.grey[300],
              ),
              borderRadius: BorderRadius.circular(60)),
          hintText: 'Write something here..',
          hintStyle: TextStyle(
            color: Colors.black,
            fontSize: 20,
          ),
          errorBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
        ),
      ),
    );
  }
}
