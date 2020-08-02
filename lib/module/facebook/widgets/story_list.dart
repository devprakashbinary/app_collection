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
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
      child: Row(
        children: <Widget>[
          CreateStoryCard(),
          SizedBox(width: 15),
          Row(
            children: stories.map((story) => Row(
              children: <Widget>[
                StoryThumbnailCard(storyThumbnail: story),
                SizedBox(width: 15)
              ],
            )).toList(),
          )
        ],
      ),
    );
  }
}
