import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:visibility_detector/visibility_detector.dart';
import 'package:app_collection/module/facebook/widgets/profile-circular-avatar.dart';
import 'package:app_collection/core/interface/facebook_group_post.interface.dart';
import 'package:video_player/video_player.dart';
import 'package:readmore/readmore.dart';
import 'package:app_collection/module/facebook/widgets/post_action_bottom_panel.dart';
import 'package:app_collection/module/facebook/widgets/like_comment_status_bar.dart';

class FacebookPostCard extends StatefulWidget {
  final FacebookGroupPost facebookGroupPost;
  FacebookPostCard({this.facebookGroupPost});
  @override
  _FacebookPostCardState createState() => _FacebookPostCardState();
}

class _FacebookPostCardState extends State<FacebookPostCard> {
  VideoPlayerController _postVideocontroller;

  actionPanelModal(BuildContext context) {
    PostActionBottomPanel.actionPanelModal(context);
  }

  initVideoController() {
    if (widget.facebookGroupPost.mainContentType == 'VIDEO') {
      _postVideocontroller = VideoPlayerController.network(widget.facebookGroupPost.postContent)
        ..initialize().then((_) {});
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initVideoController();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 15),
        decoration: BoxDecoration(
            border: Border(bottom: BorderSide(color: Color(0xffc9cbd0), width: 8))
        ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          header(),
          body(),
          LikeCommentStatusBar(facebookGroupPost: widget.facebookGroupPost)
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
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                     Expanded(
                       child: RichText(
                              text: TextSpan(
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.black),
                              children: [
                                TextSpan(text: "${ (widget.facebookGroupPost.postType == 'FACEBOOK_GROUP_POST' || widget.facebookGroupPost.postType == 'FACEBOOK_USER_POST') ?  widget.facebookGroupPost.user.name : widget.facebookGroupPost.groupName}"),
                                WidgetSpan(child:  widget.facebookGroupPost.postType == 'FACEBOOK_GROUP_POST' ? Icon(Icons.play_arrow, size: 20, color: Color(0xff9096a4)) : Text('')),
                                TextSpan( text: "${ widget.facebookGroupPost.postType == 'FACEBOOK_GROUP_POST' ? widget.facebookGroupPost.groupName : ''}"),
                          ],
                        ),
                      )
                     ),
                    ],
                  ),
                  SizedBox(height: 3),
                  widget.facebookGroupPost.postType == 'FACEBOOK_PAGE_POST' ? Text('Posted by ${widget.facebookGroupPost.user.name}', style: TextStyle(color: Color(0xff656567))) : SizedBox(),
                  SizedBox(height: widget.facebookGroupPost.postType == 'FACEBOOK_PAGE_POST' ? 3 : 0),
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
          ) :  _postVideocontroller.value.initialized
              ? AspectRatio(
            aspectRatio: _postVideocontroller.value.aspectRatio,
            child: VisibilityDetector(
              key: Key('facebook_post_${widget.facebookGroupPost.id}'),
              onVisibilityChanged: (visibilityInfo) {
              var visiblePercentage = visibilityInfo.visibleFraction * 100;
                if (visiblePercentage == 100) {
                  _postVideocontroller.play();
                } else {
                  _postVideocontroller.pause();
                }
              },
              child: VideoPlayer(_postVideocontroller),
            ),
          ) : Container(),
        ],
      ),
    );
  }
}
