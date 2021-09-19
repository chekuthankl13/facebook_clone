import 'package:facebook/images.dart';
import 'package:facebook/sections/activitySection.dart';
import 'package:facebook/sections/roomSection.dart';
import 'package:facebook/sections/status.dart';
import 'package:facebook/sections/storysection.dart';
import 'package:facebook/sections/suggestionSection.dart';
import 'package:facebook/widgets/button.dart';
import 'package:facebook/widgets/circleIcons.dart';
import 'package:facebook/widgets/postCard.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget divde = Divider(
      color: Colors.grey[300],
      thickness: 15,
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 6,
        child: Scaffold(
          appBar: AppBar(
            actions: [
              CircleIcon(
                appIcon: Icons.search,
                iconAction: () {
                  print("go to saerch menu");
                },
              ),
              CircleIcon(
                appIcon: Icons.messenger,
                iconAction: () {
                  print('go to message menu');
                },
              ),
            ],
            elevation: 0,
            backgroundColor: Colors.white30,
            title: Text(
              'facebook',
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            bottom: TabBar(
              indicatorColor: Colors.blue,
              tabs: [
                Tab(
                  icon: Icon(
                    Icons.home,
                    color: Colors.grey[400],
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.video_label,
                    color: Colors.grey[400],
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.group_rounded,
                    color: Colors.grey[400],
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.house_outlined,
                    color: Colors.grey[400],
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.bike_scooter_sharp,
                    color: Colors.grey[400],
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.menu,
                    color: Colors.grey[400],
                  ),
                )
              ],
            ),
          ),
          body: ListView(
            children: [
              Status(),
              Divider(
                color: Colors.grey[300],
                thickness: 2,
              ),
              ActivitySection(
                buttonOne: button(
                    icon: Icons.video_call_outlined,
                    action: () {
                      print('you clicked live');
                    },
                    title: Text(
                      'Live',
                      style: TextStyle(color: Colors.black54),
                    ),
                    color: Colors.red),
                buttonTwo: button(
                    icon: Icons.photo_library,
                    action: () {
                      print('you clicked phot');
                    },
                    title: Text(
                      'Photo',
                      style: TextStyle(color: Colors.black54),
                    ),
                    color: Colors.lightGreen),
                buttonThree: button(
                    icon: Icons.location_on,
                    action: () {
                      print('you clicked check in');
                    },
                    title: Text(
                      'Check In',
                      style: TextStyle(color: Colors.black54),
                    ),
                    color: Colors.red),
              ),
              divde,
              RoomSection(),
              divde,
              StorySection(),
              divde,
              PostCard(
                avatar: klm,
                name: 'klm',
                publishedat: '3h',
                post: panther,
                likecount: '1k',
                commentcount: '1k',
                sharecount: '250',
              ),
              PostCard(
                avatar: ab,
                name: 'lal',
                publishedat: null,
                
                post: jk,
                likecount: '2k',
                commentcount: '550',
                sharecount: '10',
              ),
              SuggestionSection(),
              divde,
              PostCard(
                avatar: jk,
                name: 'chekuthan',
                publishedat: '8h',
                post: klm,
                likecount: '1M',
                commentcount: '25k',
                sharecount: '500',
              )
            ],
          ),
        ),
      ),
    );
  }
}
