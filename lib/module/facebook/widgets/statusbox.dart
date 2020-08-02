import 'package:flutter/material.dart';
import '../facebook.images.dart';

class StatusBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 15, left: 15, bottom: 10),
      child: Row(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Image(image: NetworkImage(FacebookImages.profile_image), width: 40, height: 40),
          ),
          SizedBox(
            width: 10
          ),
         Text("What's on your mind?", style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500, fontSize: 16),)
        ],
      ),
    );
  }
}
