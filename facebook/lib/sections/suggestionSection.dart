import 'package:facebook/images.dart';
import 'package:facebook/widgets/friendSuggestion.dart';
import 'package:flutter/material.dart';

class SuggestionSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450,
      child: Column(
        children: [
          ListTile(
            title: Text(
              'People You May Know',
            ),
            trailing: IconButton(
              icon: Icon(
                Icons.more_horiz,
                color: Colors.grey[700],
              ),
              onPressed: () {
                print('you clicked more');
              },
            ),
          ),
          Container(
            height: 350,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                FriendSuggestion(),
                FriendSuggestion(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
