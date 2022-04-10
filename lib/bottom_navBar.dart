

import 'package:flutter/material.dart';
import 'package:gradeasy/Events.dart';
import 'package:gradeasy/Games.dart';
import 'package:gradeasy/Profile.dart';
import 'package:gradeasy/Societies.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:google_fonts/google_fonts.dart';

import 'HomeScreen.dart';
import 'constants.dart';



class BottomNavBar extends StatefulWidget {

 BottomNavBar();

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  final PersistentTabController _controller=PersistentTabController(initialIndex: 0);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body:PersistentTabView(
        context,
        controller: _controller,
        screens: _buildScreens(),
        items: _navBarsItems(),
        confineInSafeArea: true,
        backgroundColor: Colors.white,
        handleAndroidBackButtonPress: true,
        hideNavigationBar: false,
        resizeToAvoidBottomInset: true,
        // This needs to be true if you want to move up the screen when keyboard appears
        stateManagement: true,
        // Default is true.
        hideNavigationBarWhenKeyboardShows: true,
        // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument
        decoration: const NavBarDecoration(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(20),
          ),
          boxShadow: [
            BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.2),
              blurRadius: 10,

            ),
          ],
          colorBehindNavBar: Colors.white,
        ),
        popAllScreensOnTapOfSelectedTab: true,
        popActionScreens: PopActionScreensType.all,
        itemAnimationProperties: const ItemAnimationProperties(
          // Navigation Bars items animation properties
          duration: Duration(milliseconds: 400),
          curve: Curves.ease,
        ),
        screenTransitionAnimation: const ScreenTransitionAnimation(
          animateTabTransition: true,
          curve: Curves.bounceIn,
          duration: Duration(milliseconds: 50),
        ),
        navBarStyle: NavBarStyle.style10,
        navBarHeight: 60,
      ),
    );

  }

  final homePage = HomeScreen();
  final events = EventsScreen();
  final societies = Societies();
  final games= Games();
  final account = Profile();
//list of screens
  List<Widget> _buildScreens() {
    print("REBUILD?");
    return [

      homePage,
      events,
      societies,
      games,
      account
    ];
  }
  // list of icons and colors to be used
  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
          icon: const Icon(Icons.home),
          activeColorPrimary: Color.fromRGBO(4, 22, 48, 0.3),
          inactiveColorPrimary: Colors.grey[400],
          title:'Home',
          textStyle: GoogleFonts.signika(color:Colors.black,fontSize:SizeConfig.deviceHeight*0.018)
      ),
      PersistentBottomNavBarItem(
          icon: const Icon(Icons.event),
          activeColorPrimary: Color.fromRGBO(4, 22, 48, 0.3),
          inactiveColorPrimary: Colors.grey[400],
          title:'Events',
          textStyle: GoogleFonts.signika(color:Colors.black,fontSize:SizeConfig.deviceHeight*0.018)
      ),

      PersistentBottomNavBarItem(
          icon: Icon(Icons.people_sharp),
          activeColorPrimary: Color.fromRGBO(4, 22, 48, 0.3),
          inactiveColorPrimary: Colors.grey[400],
          title:'Societies',
          textStyle: GoogleFonts.signika(color:Colors.black,fontSize:SizeConfig.deviceHeight*0.018)


      ),
      PersistentBottomNavBarItem(
          icon: const Icon(Icons.games),
          activeColorPrimary: Color.fromRGBO(4, 22, 48, 0.3),
          inactiveColorPrimary: Colors.grey[400],
          title:'Fun Zone',
          textStyle: GoogleFonts.signika(color:Colors.black,fontSize:SizeConfig.deviceHeight*0.018)
      ),
      PersistentBottomNavBarItem(
          icon: Icon(Icons.account_circle),
          activeColorPrimary: Color.fromRGBO(4, 22, 48, 0.3),
          inactiveColorPrimary: Colors.grey[400],
          title:'Account',
          textStyle: GoogleFonts.signika(color:Colors.black,fontSize:SizeConfig.deviceHeight*0.018)
      ),

    ];
  }
}
