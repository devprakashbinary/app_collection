import 'package:flutter/material.dart';

class ProfileCircularAvatar extends StatelessWidget {
  final String imgUrl;
  final double diameter;
  ProfileCircularAvatar({this.imgUrl, this.diameter});
  @override
  Widget build(BuildContext context) {
    return  ClipRRect(
      borderRadius: BorderRadius.circular(50),
      child: Image(image: NetworkImage('$imgUrl'), height: diameter),
    );
  }
}
