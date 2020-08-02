import 'package:flutter/material.dart';
import 'package:app_collection/core/interface/app_card.interface.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:carousel_slider/carousel_slider.dart';

class AppListCard extends StatelessWidget {
  final AppCard appCard;
  AppListCard({this.appCard});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15),
      child: Column(
        children: <Widget>[
          header(),
          SizedBox(height: 10),
          thumbnailSlider()
        ],
      ),
    );
  }

  Widget header() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Image(
              image: NetworkImage(appCard.iconUrl),
              height: 70,
              width: 70,
            ),
          ),
          SizedBox(width: 15),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('${appCard.name}', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                SizedBox(height: 5),
                Text('${appCard.title}', style: TextStyle(color: Color(0xffa8acb3), fontSize: 16)),
                SizedBox(height: 5),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    RatingBarIndicator(
                      rating: appCard.rating,
                      unratedColor: Color(0xff8e8e91),
                      itemBuilder: (context, index) => Icon(
                        Ionicons.ios_star,
                        color: Colors.amber,
                      ),
                      itemCount: 5,
                      itemSize: 20.0,
                      direction: Axis.horizontal,
                    ),
                    SizedBox(width: 15),
                    Text('${appCard.ratingCount}', style: TextStyle(fontSize: 16, color: Color(0xffa8acb3)),)
                  ],
                )
              ],
            ),
          ),
          FlatButton(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0)),
            color: Colors.white,
            padding: EdgeInsets.all(8.0),
            onPressed: () {},
            child: Text(
              "View App".toUpperCase(),
              style: TextStyle(
                color: Color(0xff3478f6),
                fontSize: 14.0,
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget thumbnailSlider() {
    return Container(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children:  appCard.thumbnails.map((item) => Row(
              children: <Widget>[
                Image(
                  image: NetworkImage(item.url),
                  height: 400,
                ),
                SizedBox(width: 5)
              ],
            )).toList(),
          ),
        )
    );
  }

}
