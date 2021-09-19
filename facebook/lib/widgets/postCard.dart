import 'package:facebook/sections/activitySection.dart';
import 'package:facebook/widgets/avatar.dart';
import 'package:facebook/widgets/blueTick.dart';
import 'package:facebook/widgets/button.dart';
import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  final String avatar;
  final String name;
  final String publishedat;
  final String post;
  final String commentcount;
  final String sharecount;
  final String likecount;

  PostCard(
      {@required this.avatar,
      @required this.name,
      @required this.publishedat,
      @required this.post,
      @required this.commentcount,
      @required this.sharecount,
      @required this.likecount});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 5),
      child: Column(
        children: [
          postCardHeader(),
          postImage(),
          postFooter(),
          Divider(
            height: 2,
            thickness: 3,
          ),
          ActivitySection(
            buttonOne: button(
                icon: Icons.thumb_up_alt,
                color: Colors.grey[700],
                action: () {
                  print('you like');
                },
                title: Text('Like')),
            buttonTwo: button(
                icon: Icons.message_outlined,
                color: Colors.grey[700],
                action: () {
                  print('you comment');
                },
                title: Text('Comment')),
            buttonThree: button(
                icon: Icons.share_outlined,
                color: Colors.grey[700],
                action: () {
                  print('you share');
                },
                title: Text('Share')),
          ),
          Divider(
            height: 25,
            thickness: 15,
          )
        ],
      ),
    );
  }
//---------widgets-----------//

  Widget postCardHeader() {
    return ListTile(
      leading: Avatar(
        image: avatar,
        onlineindicator: false,
      ),
      title: Row(
        children: [
          Text(
            name == null ? "" : name,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(width: 10),
          BlueTick()
        ],
      ),
      subtitle: Row(
        children: [
          Text(publishedat == null ? '' : publishedat),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.public,
            color: Colors.grey,
            size: 15,
          ),
        ],
      ),
      trailing: IconButton(
        icon: Icon(Icons.more_horiz),
        onPressed: () {
          print('you pressed more');
        },
      ),
    );
  }

  Widget postImage() {
    return Container(
      child: Image.asset(post),
    );
  }

  Widget postFooter() {
    return Container(
      height: 50,
      padding: EdgeInsets.only(left: 10, right: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Row(
              children: [
                Container(
                  height: 15,
                  width: 15,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.blue[400],
                  ),
                  child: Icon(
                    Icons.thumb_up,
                    color: Colors.white,
                    size: 10,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(likecount),
              ],
            ),
          ),
          Container(
            child: Row(
              children: [
                Text(commentcount),
                SizedBox(
                  width: 5,
                ),
                Text("comments"),
                SizedBox(
                  width: 10,
                ),
                Text(sharecount),
                SizedBox(
                  width: 5,
                ),
                Text("shares"),
                SizedBox(
                  width: 10,
                ),
                Avatar(
                  image: avatar,
                  onlineindicator: false,
                  avatarwidth: 30,
                  avatarheight: 30,
                ),
                IconButton(
                  icon: Icon(Icons.arrow_drop_down),
                  onPressed: () {},
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
