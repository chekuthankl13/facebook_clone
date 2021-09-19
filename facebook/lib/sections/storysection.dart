import 'package:facebook/images.dart';
import 'package:flutter/material.dart';
import 'package:facebook/sections/story.dart';

class StorySection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Story(
            story: klm,
            label: 'add to your story',
            avatar: '',
            createstorystatus: true,
          ),
          Story(
            story: ab,
            label: 'ola guyss',
            avatar: panther,
          ),
          Story(
            story: jk,
            label: null,
            avatar: klm,
          ),
          Story(
            story: cd,
            label: null,
            avatar: panther,
          )
        ],
      ),
    );
  }
}
