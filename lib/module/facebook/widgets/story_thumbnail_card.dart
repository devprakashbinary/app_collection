import 'package:flutter/material.dart';
import 'package:app_collection/core/interface/story_thumbnail.interface.dart';

class StoryThumbnailCard extends StatelessWidget {
  final StoryThumbnail storyThumbnail;
  StoryThumbnailCard({this.storyThumbnail});
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20.0),
      child: Container(
        height: 250,
        width: 150,
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          image: DecorationImage(image: NetworkImage(storyThumbnail.thumbnailUrl), fit: BoxFit.fill)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                  border: Border.all(color: Color(0xff3875e9), width: 5, style: BorderStyle.solid)
                ),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image(image: NetworkImage(storyThumbnail.userImage), fit: BoxFit.fill)),
              ),
            ),
            Text('${storyThumbnail.userName}', style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold, shadows: <Shadow>[
              Shadow(
                offset: Offset(1.0, 1.0),
                blurRadius: 2.0,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
            ],))
          ],
        ),
      ),
    );
  }
}
