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
    return
      Scaffold(
        body: Container(
          height:SizeConfig.deviceHeight*0.45,
          width: SizeConfig.deviceWidth,
          child: GridView(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 5,
                mainAxisSpacing: 5,
                mainAxisExtent: 150
            ),
            children: [
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>SnakeGame()));
                },
                child: Card(
                  color: Colors.white,
                  elevation: 5,
                  child: Column(

                      children:[
                        Text('Compiler Design',style:GoogleFonts.pacifico(color:Color.fromRGBO(4, 22, 48, 0.7),fontSize: SizeConfig.deviceHeight*0.02),),
                        Text('Release date: 8-04-2022',style:GoogleFonts.signika(color:Colors.grey)),
                        Text('Due date:14-04-2022',style:GoogleFonts.signika(color:Colors.grey)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text('You got\n this!',style:GoogleFonts.signika(color:Color.fromRGBO(4, 22, 48, 0.7),fontSize: SizeConfig.deviceHeight*0.025)),
                            Image.asset('assets/1.png')
                          ],
                        )

                      ]
                  ),
                ),
              ),
              Card(
                color: Colors.white,
                elevation: 5,
                child: Image.asset('assets/2.png')



              ),

            ],
          ),
        ),
      );
  }
}
