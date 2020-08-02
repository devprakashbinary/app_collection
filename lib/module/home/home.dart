import 'package:flutter/material.dart';
import 'package:app_collection/core/interface/app_card.interface.dart';
import 'package:app_collection/module/home/widgets/app_list_card.dart';
import 'package:app_collection/core/mocks/home_app_list.dart';

class Home extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  static List<AppCard> appCardList = new List();

  getAppCardList() {
    var data = (ApplicationCardList.list).map((elem) => AppCard.fromJson(elem));
    setState(() {
      appCardList.addAll(data);
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getAppCardList();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.redAccent,
        centerTitle: true,
        title: Text("Prakash Apps Collection"),
      ),
      body:  Container(
        color: Color(0xffeef5fe),
        child: ListView.builder(
            padding: EdgeInsets.only(left: 15, right: 15, top: 15),
            itemCount: appCardList.length,
            itemBuilder: (BuildContext context, int index) => AppListCard(appCard: appCardList[index])),
      ),
    );
  }
}
