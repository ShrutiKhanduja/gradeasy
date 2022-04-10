import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:gradeasy/HomeScreen.dart';
import 'package:gradeasy/Snake_game.dart';
import 'package:gradeasy/Tetris/gameScreen.dart';
import 'package:hexcolor/hexcolor.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1000,
      width: 500,
      child:AnimatedSplashScreen(
        animationDuration: Duration(milliseconds: 100),
        nextScreen: Tetris(),
        backgroundColor:HexColor("#041630") ,
        splash: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
Image.asset("LOGO2.png",height: 200,width: 200),
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

      ),
    );
  }
}
