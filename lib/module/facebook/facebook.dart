import 'package:flutter/material.dart';
import 'package:app_collection/module/facebook/facebook-home.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:flutter_icons/flutter_icons.dart';

class Facebook extends StatefulWidget {
  @override
  _FacebookState createState() => _FacebookState();
}

class _FacebookState extends State<Facebook> {
  PersistentTabController _bottomTabController = PersistentTabController(initialIndex: 0);
  List<Widget> _buildScreens() {
    return [
      FacebookHome(),
      Container(),
      Container(),
      Container(),
      Container(),
      Container(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Icon(Entypo.home),
        activeColor: Color(0xff3875e8),
        inactiveColor: Color(0xff66676b),
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Ionicons.md_tv),
        activeColor: Color(0xff3875e8),
        inactiveColor: Color(0xff66676b),
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Entypo.shop),
        activeColor: Color(0xff3875e8),
        inactiveColor: Color(0xff66676b),
      ),
      PersistentBottomNavBarItem(
        icon: Icon(EvilIcons.user, size: 26,),
        activeColor: Color(0xff3875e8),
        inactiveColor: Color(0xff66676b),
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Ionicons.ios_notifications_outline),
        activeColor: Color(0xff3875e8),
        inactiveColor: Color(0xff66676b),
      ),
      PersistentBottomNavBarItem(
        icon: Icon(MaterialIcons.menu),
        activeColor: Color(0xff3875e8),
        inactiveColor: Color(0xff66676b),
      ),
    ];
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PersistentTabView(
        controller: _bottomTabController,
        screens: _buildScreens(),
        items: _navBarsItems(),
        navBarHeight: 40,
        confineInSafeArea: true,
        backgroundColor: Colors.white,
        handleAndroidBackButtonPress: true,
        resizeToAvoidBottomInset: true,
        stateManagement: true,
        hideNavigationBarWhenKeyboardShows: true,
        decoration: NavBarDecoration(
          borderRadius: BorderRadius.circular(0.0),
          colorBehindNavBar: Colors.white,
        ),
        popAllScreensOnTapOfSelectedTab: true,
        itemAnimationProperties: ItemAnimationProperties(
          duration: Duration(milliseconds: 200),
          curve: Curves.ease,
        ),
        screenTransitionAnimation: ScreenTransitionAnimation(
          animateTabTransition: true,
          curve: Curves.ease,
          duration: Duration(milliseconds: 200),
        ),
        navBarStyle: NavBarStyle.style3,
        // Choose the nav bar style with this property.
      ),
    );
  }
}
