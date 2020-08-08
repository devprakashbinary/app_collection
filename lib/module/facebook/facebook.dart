import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:app_collection/module/facebook/widgets/statusbox.dart';
import 'package:app_collection/module/facebook/widgets/facebook_tabs.dart';
import 'package:app_collection/module/facebook/widgets/create_room_slider.dart';
import 'package:app_collection/module/facebook/widgets/story_list.dart';
import 'package:app_collection/module/facebook/widgets/facebook_group_post_card.dart';
import 'package:app_collection/core/mocks/facebook_group_post.dart';
import 'package:app_collection/core/interface/facebook_group_post.interface.dart';

class Facebook extends StatefulWidget {
  @override
  _FacebookState createState() => _FacebookState();
}

class _FacebookState extends State<Facebook> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        elevation: 0.0,
        title: Text("facebook", style: TextStyle(color: Color(0xff3875e9), fontWeight: FontWeight.bold, fontSize: 26)),
        actions: <Widget>[
          GestureDetector(
            onTap: () {},
            child: Image(image: AssetImage('assets/images/icons/ios-circular-search-solid.png'), width: 40, height: 40),
          ),
          SizedBox(width: 10),
          GestureDetector(
            onTap: () {},
            child: Image(image: AssetImage('assets/images/icons/ios-circular-chat-solid.png'), width: 40, height: 40),
          ),
          SizedBox(width: 15),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            StatusBox(),
            FacebookTabs(),
            CreateRoomSlider(),
            StoryList(),
            FacebookGroupPostCard(facebookGroupPost: FacebookGroupPost.fromJson(FacebookGroupPostData.data))
          ],
        ),
      )
    );
  }
}
