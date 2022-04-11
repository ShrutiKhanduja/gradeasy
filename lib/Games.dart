import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gradeasy/Snake_game.dart';
import 'package:gradeasy/constants.dart';

class Games extends StatefulWidget {
  const Games({Key? key}) : super(key: key);

  @override
  _GamesState createState() => _GamesState();
}

class _GamesState extends State<Games> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return
      Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children:[
              SizedBox(height:SizeConfig.deviceHeight*0.05),
              Text('FUN ZONE',style: GoogleFonts.signika(color:Color.fromRGBO(4, 22, 48, 1),fontWeight: FontWeight.bold,fontSize: SizeConfig.deviceHeight*0.04),),
              SizedBox(height:SizeConfig.deviceHeight*0.02),
              InkWell(
                onTap:(){
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>SnakeGame()));
                },
                child: Container(
                    height:SizeConfig.deviceHeight*0.3,
child: Card(
    child: Image.asset(
      'assets/snake.jpeg',
      fit: BoxFit.cover,
    ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
    ),
                   ),
                    ),
              ),
            ],
          ),
        )
      );
  }
}
