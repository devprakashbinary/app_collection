import 'package:flutter/material.dart';
import 'package:app_collection/module/facebook/facebook.images.dart';
import 'package:flutter_icons/flutter_icons.dart';

class CreateStoryCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: Container(
        height: 200,
        width: 120,
        padding: EdgeInsets.only(bottom: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          border: Border.all(width: 1.0, color: Color(0xffe0e1e5))
        ),
        child: Stack(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.only(topRight: Radius.circular(15.0), topLeft: Radius.circular(15.0)),
              child: Image(
                height: 150,
                image: NetworkImage(FacebookImages.profile_image),
                fit: BoxFit.fill,
              ),
            ),
            Positioned(
              bottom: 0.0,
              left: 22.0,
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Align(
                      alignment: Alignment(0.0, 0.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(60.0)),
                        child: Container(
                          color: Colors.white,
                          padding: EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                          child: Icon(
                            AntDesign.pluscircle,
                            color: Color(0xff3875e9),
                            size: 30,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                    Text("Create a Story", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),)
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
