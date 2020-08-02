import 'package:flutter/material.dart';
import 'package:app_collection/module/facebook/widgets/user_with_online_status.dart';
import 'package:app_collection/core/mocks/user_list_with_online_status.dart';
import 'package:app_collection/core/interface/user_with_online_status.interface.dart';


class CreateRoomSlider extends StatefulWidget {
  @override
  _CreateRoomSliderState createState() => _CreateRoomSliderState();
}

class _CreateRoomSliderState extends State<CreateRoomSlider> {
  List<UserWithOnlineStatus> userList = List();
  getUserList() {
    var data = UserListWithOnlineStatus.list.map((elem) => UserWithOnlineStatus.fromJson(elem));
    setState(() {
      userList.addAll(data);
    });
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getUserList();
  }
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          decoration: BoxDecoration(
            border: Border(top: BorderSide(color: Color(0xffc9cbd0), width: 8), bottom: BorderSide(color: Color(0xffc9cbd0), width: 8))
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              FlatButton(
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40.0),
                    side: BorderSide(color: Color(0xffd1e4fc), width: 2)
                ),
                color: Colors.white,
                child: Row(
                  children: <Widget>[
                    Image(
                      image: AssetImage('assets/images/icons/ios-create-room-gradient-icon.png'),
                      width: 25,
                    ),
                    SizedBox(width: 5),
                    Column(
                      children: <Widget>[
                        Text('Create', style: TextStyle(color: Color(0xff3875e9), fontSize: 13), textAlign: TextAlign.left),
                        Text('Room', style: TextStyle(color: Color(0xff3875e9), fontSize: 13), textAlign: TextAlign.left,)
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(width: 15),
              Row(
                children: userList.map((item) => Row(
                  children: <Widget>[
                    UserThumbnailWithOnlineStatus(thumbnailUrl: "${item.thumbnailUrl}", isOnline: item.isOnline),
                    SizedBox(width: 15)
                  ],
                )).toList(),
              )
            ],
          ),
        ),
    );
  }
}
