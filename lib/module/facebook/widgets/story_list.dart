import 'package:flutter/material.dart';
import 'package:app_collection/core/interface/story_thumbnail.interface.dart';
import 'package:app_collection/core/mocks/user_stories.dart';
import 'package:app_collection/module/facebook/widgets/story_thumbnail_card.dart';
import 'package:app_collection/module/facebook/widgets/create_story_card.dart';

class StoryList extends StatefulWidget {
  @override
  _StoryListState createState() => _StoryListState();
}

class _StoryListState extends State<StoryList> {
  List<StoryThumbnail> stories = List();

  getStories() {
    var data = UserStories.list.map((elem) => StoryThumbnail.fromJson(elem));
    setState(() {
      stories.addAll(data);
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getStories();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Color(0xffc9cbd0), width: 8))
      ),
      child: Stack(
        children: <Widget>[
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
            child: Row(
              children: <Widget>[
                CreateStoryCard(),
                SizedBox(width: 10),
                Row(
                  children: stories.map((story) => Row(
                    children: <Widget>[
                      StoryThumbnailCard(storyThumbnail: story),
                      SizedBox(width: 10)
                    ],
                  )).toList(),
                )
              ],
            ),
          ),
//        AnimatedPositioned(
//          top: 15,
//          left: 15,
//          child:  CreateStoryCard(),
//          duration: Duration(microseconds: 1000),
//        ),
        ],
      ),
    );
  }
}
