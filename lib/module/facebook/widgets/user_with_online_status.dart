import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:app_collection/module/facebook/widgets/profile-circular-avatar.dart';

class UserThumbnailWithOnlineStatus extends StatelessWidget {
  final String thumbnailUrl;
  final bool isOnline;
  UserThumbnailWithOnlineStatus({this.thumbnailUrl, this.isOnline});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: <Widget>[
          ProfileCircularAvatar(imgUrl: thumbnailUrl, diameter: 35),
          isOnline ? Positioned(
            top: 20.0,
            left: 20.0,
            child: Icon(
              Octicons.primitive_dot,
              color: Colors.green,
              size: 20,
            ),
          ): SizedBox()
        ],
      ),
    );
  }
}
