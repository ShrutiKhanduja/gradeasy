import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:gradeasy/HomeScreen.dart';
import 'package:gradeasy/Snake_game.dart';
import 'package:gradeasy/Tetris/gameScreen.dart';
import 'package:gradeasy/login.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'bottom_navBar.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late SharedPreferences prefs;
  String p='';
  void pref()async {
    prefs= await SharedPreferences.getInstance();
    p=prefs.getString('name')!;
  }
  @override
  void initState() {
  pref();

  Future.delayed(const Duration(seconds: 3), () async {
    (p!='')?Navigator.pushReplacement(context,MaterialPageRoute(builder:(context)=> BottomNavBar())):Navigator.pushReplacement(context,MaterialPageRoute(builder:(context)=> LoginScreen()));




  });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:HexColor("#041630") ,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
Image.asset("assets/LOGO2.png"),
            // SizedBox(
            //   width: 250.0,
            //   child: DefaultTextStyle(
            //     style: const TextStyle(
            //       fontSize: 30.0,
            //       fontStyle: ,
            //       color: Colors.white,
            //     ),
            //   child: AnimatedTextKit(animatedTexts: [
            //     TyperAnimatedText('GRADEASY'),
            //     TyperAnimatedText(''),
            //
            //   ]),
            // )
            // )
        ],
        ),


    );
  }
}
