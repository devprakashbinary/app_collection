import 'package:flutter/material.dart';

class FacebookTabs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      decoration: BoxDecoration(
        border: Border(top: BorderSide(color:  Color(0xffc9cbd0), width: 1))
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          GestureDetector(
            onTap: (){},
            child: Row(
              children: <Widget>[
                Image(
                  image: AssetImage('assets/images/icons/ios-live-video.png'),
                  height: 18,
                ),
                SizedBox(width: 5),
                Text("Live", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 14))
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            decoration: BoxDecoration(
                border: Border(left: BorderSide(color: Color(0xffc9cbd0), width: 1), right: BorderSide(color: Color(0xffc9cbd0), width: 1))
            ),
            child: GestureDetector(
              onTap: (){},
              child: Center(
                child: Row(
                  children: <Widget>[
                    Image(
                      image: AssetImage('assets/images/icons/ios-photo-gallery.png'),
                      height: 20,
                    ),
                    SizedBox(width: 5),
                    Text("Photo", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 14))
                  ],
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: (){},
            child: Center(
              child: Row(
                children: <Widget>[
                  Image(
                    image: AssetImage('assets/images/icons/ios-video-recording.png'),
                    height: 15,
                  ),
                  SizedBox(width: 5),
                  Text("Room", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 14))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
