import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constants.dart';

class EventsDescription extends StatefulWidget {
  const EventsDescription({Key? key}) : super(key: key);

  @override
  _EventsDescriptionState createState() => _EventsDescriptionState();
}

class _EventsDescriptionState extends State<EventsDescription> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.4,
            child: Stack(
              children: [
                Positioned(
                    top: MediaQuery.of(context).size.height * 0.02,
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.4,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/inno.jpg'
                              ),
                              fit: BoxFit.cover)),
                      child: ClipRRect(
                        child: BackdropFilter(
                          filter:
                          ImageFilter.blur(sigmaX: 8.0, sigmaY: 8.0),
                          child: Container(
                              height: MediaQuery.of(context).size.height *
                                  0.4,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(0.0))),
                        ),
                      ),
                    )),
                Positioned(
                  top: MediaQuery.of(context).size.height * 0.03,
                  left: MediaQuery.of(context).size.width * 0.025,
                  child: Container(
                      height: MediaQuery.of(context).size.height * 0.36,
                      width: MediaQuery.of(context).size.width * 0.95,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/inno.jpg'
                             ),
                              fit: BoxFit.cover))),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('InnoSkill\'22',style:GoogleFonts.pacifico(color:Color.fromRGBO(4, 22, 48, 1),fontSize: SizeConfig.deviceHeight*0.04)),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text('Do the impossible, because almost everyone has told me my ideas are merely fantasies\n- Howard Hughes\nWith this, we announce the most awaited Annual Technical Fest of Manav Rachna- Innoskill 2022.\n9 Different Technical & Non-Technical Events, 50+ Competitions & much more\nCategories: Grade VI-VIII; Grade IX-XII\n College/University students',
            style:GoogleFonts.signika(color:Colors.grey,fontSize: SizeConfig.deviceHeight*0.02)),
          ),

        ],
      )
    );
  }
}
