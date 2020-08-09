import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:like_button/like_button.dart';
import 'package:app_collection/core/interface/facebook_group_post.interface.dart';
class LikeCommentStatusBar extends StatefulWidget {
  final FacebookGroupPost facebookGroupPost;
  LikeCommentStatusBar({this.facebookGroupPost});
  @override
  _LikeCommentStatusBarState createState() => _LikeCommentStatusBarState();
}

class _LikeCommentStatusBarState extends State<LikeCommentStatusBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            decoration: BoxDecoration(
              border: Border(bottom: BorderSide(color:  Color(0xff666668), width: 0.5))
            ),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Row(
                    children: <Widget>[
                     SizedBox(
                       width: 40,
                       child: Stack(
                         children: <Widget>[
                           Positioned(
                             left: 17,
                             child: Image(
                               image: AssetImage('assets/images/icons/post-heart-like.png'),
                               width: 20,
                             ),
                           ),
                           Image(
                             image: AssetImage('assets/images/icons/post-like.png'),
                             width: 20,
                           ),
                         ],
                       ),
                     ),
                      Text('${widget.facebookGroupPost.likeCommentStatus.likes}', style: TextStyle(color: Color(0xff656567))
                      ),
                    ],
                  ),
                ),
                Text('${widget.facebookGroupPost.likeCommentStatus.comments} Comments',  style: TextStyle(color: Color(0xff666668))),
                SizedBox(width: 5),
                Text('${widget.facebookGroupPost.likeCommentStatus.shares} shares',  style: TextStyle(color: Color(0xff666668))),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              FlatButton.icon(
                  onPressed: null,
                  icon: LikeButton(
                    size: 20,
                    circleColor:
                    CircleColor(start: Color(0xff00ddff), end: Color(0xff0099cc)),
                    bubblesColor: BubblesColor(
                      dotPrimaryColor: Color(0xff33b5e5),
                      dotSecondaryColor: Color(0xff0099cc),
                    ),
                    likeBuilder: (bool isLiked) {
                      return isLiked ? Icon(
                        AntDesign.like1,
                        color: Color(0xff3875e8),
                        size: 20,
                      ) : Icon(
                        AntDesign.like2,
                        color: Color(0xff666668),
                        size: 20,
                      );
                    },
                  ),
                  label: Text('Like', style: TextStyle(color: Color(0xff666668)))),
              FlatButton.icon(
                  onPressed: () {},
                  icon: Icon(
                    MaterialCommunityIcons.comment_outline,
                    color: Color(0xff666668),
                  ),
                  label: Text('Comment', style: TextStyle(color: Color(0xff666668)))
              ),
              FlatButton.icon(
                  onPressed: () {},
                  icon: Icon(
                    MaterialCommunityIcons.share_outline,
                    color: Color(0xff666668),
                  ),
                  label: Text('Share', style: TextStyle(color: Color(0xff666668)))
              )
            ],
          )
        ],
      )
    );
  }
}
