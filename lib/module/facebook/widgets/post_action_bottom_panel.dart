import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class PostActionBottomPanel {
  static actionPanelModal(BuildContext context) {
    showModalBottomSheet(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0)),
        ),
        
        context: context,
        builder: (context) {
          return SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                    decoration: BoxDecoration(
                        border: Border(bottom: BorderSide(color: Color(0xffcacacc), width: 1))
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                       Image(
                         image: AssetImage('assets/images/icons/post-bookmark.png'),
                         width: 18,
                       ),
                        SizedBox(width: 10),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('Save past', style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500)),
                            SizedBox(height: 5),
                            Text('Add this to your saved items.', style: TextStyle(fontWeight: FontWeight.w300, fontSize: 16))
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                    decoration: BoxDecoration(
                        border: Border(bottom: BorderSide(color: Color(0xffcacacc), width: 1))
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Image(
                          image: AssetImage('assets/images/icons/post-report.png'),
                          width: 20,
                        ),
                        SizedBox(width: 10),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('Report Post to Group Admins', style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500)),
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                    decoration: BoxDecoration(
                        border: Border(bottom: BorderSide(color: Color(0xffcacacc), width: 1))
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Image(
                          image: AssetImage('assets/images/icons/post-hide.png'),
                          width: 20,
                        ),
                        SizedBox(width: 10),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('Hide past', style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500)),
                            SizedBox(height: 5),
                            Text('See fewer posts like this.', style: TextStyle(fontWeight: FontWeight.w300, fontSize: 16))
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                    decoration: BoxDecoration(
                        border: Border(bottom: BorderSide(color: Color(0xffcacacc), width: 1))
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Image(
                          image: AssetImage('assets/images/icons/post-snooze.png'),
                          width: 20,
                        ),
                        SizedBox(width: 10),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('Snooze Vishal for 30 days', style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500)),
                            SizedBox(height: 5),
                            Text('Temproarily stop seeing posts', style: TextStyle(fontWeight: FontWeight.w300, fontSize: 16))
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                    decoration: BoxDecoration(
                        border: Border(bottom: BorderSide(color: Color(0xffcacacc), width: 1))
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Image(
                          image: AssetImage('assets/images/icons/post-all-hide.png'),
                          width: 20,
                        ),
                        SizedBox(width: 10),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('Hide all from Vishal', style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500)),
                            SizedBox(height: 5),
                            Text('Stop seeing posts from this person.', style: TextStyle(fontWeight: FontWeight.w300, fontSize: 16))
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                    decoration: BoxDecoration(
                        border: Border(bottom: BorderSide(color: Color(0xffcacacc), width: 1))
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Image(
                          image: AssetImage('assets/images/icons/post-info.png'),
                          width: 20,
                        ),
                        SizedBox(width: 10),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('Why am I seeing this post?', style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500)),
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                    decoration: BoxDecoration(
                        border: Border(bottom: BorderSide(color: Color(0xffcacacc), width: 1))
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Image(
                          image: AssetImage('assets/images/icons/find-report-support.png'),
                          width: 20,
                        ),
                        SizedBox(width: 10),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('Find support or report post', style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500)),
                            SizedBox(height: 5),
                            Text("I'm concerned about this post", style: TextStyle(fontWeight: FontWeight.w300, fontSize: 16))
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                    decoration: BoxDecoration(
                        border: Border(bottom: BorderSide(color: Color(0xffcacacc), width: 1))
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Image(
                          image: AssetImage('assets/images/icons/post-notification.png'),
                          width: 20,
                        ),
                        SizedBox(width: 10),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('Turn on notifications for this post', style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500)),

                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
      });
  }
}

