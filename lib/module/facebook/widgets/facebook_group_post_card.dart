import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:app_collection/module/facebook/widgets/profile-circular-avatar.dart';
import 'package:app_collection/core/interface/facebook_group_post.interface.dart';
import 'package:video_player/video_player.dart';
import 'package:readmore/readmore.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:app_collection/module/facebook/widgets/post_action_bottom_panel.dart';

class FacebookGroupPostCard extends StatefulWidget {
  final FacebookGroupPost facebookGroupPost;
  FacebookGroupPostCard({this.facebookGroupPost});
  @override
  _FacebookGroupPostCardState createState() => _FacebookGroupPostCardState();
}

class _FacebookGroupPostCardState extends State<FacebookGroupPostCard> {


  actionPanelModal(BuildContext context) {
    PostActionBottomPanel.actionPanelModal(context);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          header(),
          body(),
        ],
      )
    );
  }

  Widget header() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ProfileCircularAvatar(imgUrl: widget.facebookGroupPost.user.imgUrl, diameter: 50),
            SizedBox(width: 10),
            Expanded(
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                     Expanded(
                       child: RichText(
                              text: TextSpan(
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.black),
                              children: [
                                TextSpan(text: "${widget.facebookGroupPost.user.name}", ),
                                WidgetSpan(child: Icon(Icons.play_arrow, size: 20, color: Color(0xff9096a4),)),
                                TextSpan( text: "${widget.facebookGroupPost.groupName}",
                            ),
                          ],
                        ),
                      )
                     ),
                    ],
                  ),
                  SizedBox(height: 3),
                  Row(
                    children: <Widget>[
                      Text('${widget.facebookGroupPost.postTimeLong} .', style: TextStyle(color: Color(0xff656567))),
                      SizedBox(width: 5),
                      Icon(
                          Entypo.globe,
                          color: Color(0xff656567),
                        size: 14,
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(width: 10),
            SizedBox(
              height: 10,
              width: 25,
              child: IconButton(
                onPressed: () {
                  actionPanelModal(context);
                },
                padding: EdgeInsets.symmetric(vertical: 0),
                icon: Icon(
                    Icons.more_horiz,
                    color: Color(0xff656567)
                ),
              ),
            )
          ],
        )
    );
  }

  Widget body() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          widget.facebookGroupPost.contentDescription != null ? Padding(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: ReadMoreText('${widget.facebookGroupPost.contentDescription}',
              trimMode: TrimMode.Line,
              trimLines: 2,
              colorClickableText: Color(0xff656567),
              trimCollapsedText: '...See more',
              trimExpandedText: ' see less',
              style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w400),),
          ) : SizedBox(),
          widget.facebookGroupPost.mainContentType == 'IMAGE' ? Image(
            image: NetworkImage(widget.facebookGroupPost.postContent),
          ) : Container(),
        ],
      ),
    );
  }
}
