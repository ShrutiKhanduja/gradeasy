import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constants.dart';

class EventsScreen extends StatefulWidget {
  const EventsScreen({Key? key}) : super(key: key);

  @override
  _EventsScreenState createState() => _EventsScreenState();
}

class _EventsScreenState extends State<EventsScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body:Column(
        children: [
          Stack(
            children: [
              Container(
                height:SizeConfig.deviceHeight*0.2,
                color: Color.fromRGBO(4, 22, 48, 1),

              ),
              Positioned(
                top: SizeConfig.deviceHeight*0.1,
                child: Container(
                  height: SizeConfig.deviceHeight*0.07,
                  width:SizeConfig.deviceWidth*0.6,
                  decoration: BoxDecoration(
                    color:Colors.white,
                      borderRadius: BorderRadius.only(topRight: Radius.circular(20),bottomRight: Radius.circular(20))),
                     child: Center(
                       child: Text('Upcoming events',style:GoogleFonts.pacifico(color:Color.fromRGBO(4, 22, 48, 1),fontSize:SizeConfig.deviceHeight*0.03),
                ),
                     )),
              )
            ],
          ),

         Stack(
           children: [
             Padding(
               padding: const EdgeInsets.all(20.0),
               child: Container(
                 height: SizeConfig.deviceHeight*0.2,
                 width: SizeConfig.deviceWidth,
                 child: Card(
                    elevation: 5,
                   child:Padding(
                     padding: const EdgeInsets.all(20.0),
                     child: Column(
                       crossAxisAlignment: CrossAxisAlignment.end,
                       children: [
                         Text('InnoSkill\'22',style:GoogleFonts.signika(color:Color.fromRGBO(4, 22, 48, 1),fontSize: SizeConfig.deviceHeight*0.03)),
                         Text('Event Date: 11-12 April',style:GoogleFonts.signika(color:Colors.grey,fontSize: SizeConfig.deviceHeight*0.02)),
                         Row(
                           mainAxisAlignment: MainAxisAlignment.end,
                           children: [
                             Text('Coins :3',style:GoogleFonts.signika(color:Colors.grey,fontSize: SizeConfig.deviceHeight*0.025)),
                             Image.asset('assets/coins.png',height: 20,)
                           ],
                         ),
                         SizedBox(height:5),
                         Container(
                           height:SizeConfig.deviceHeight*0.04,
                           width:SizeConfig.deviceWidth*0.4,
                           decoration: BoxDecoration(color:Color.fromRGBO(4, 22, 48, 1),
                             borderRadius: BorderRadius.all(Radius.circular(20))
                           ),
                          child:Center(child: Text('Check out',style: GoogleFonts.signika(color:Colors.white,),))
                         )
                       ],
                     ),
                   ),
                 ),),
             ),
             Positioned(
                 bottom:SizeConfig.deviceHeight*0.04,
                 child: Padding(
                   padding: const EdgeInsets.only(left:8.0),
                   child: Container(
                       height:SizeConfig.deviceHeight*0.2,width: SizeConfig.deviceWidth*0.4,
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.all(Radius.circular(20)),
                         image: DecorationImage(image: AssetImage('assets/inno.jpg'),fit: BoxFit.cover)),
                       ),
                 )),

           ],
         ),


        ],
      )
    );
  }
}
