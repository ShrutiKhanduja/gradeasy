import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import 'constants.dart';

class EventsDescription extends StatefulWidget {
  const EventsDescription({Key? key}) : super(key: key);

  @override
  _EventsDescriptionState createState() => _EventsDescriptionState();
}

class _EventsDescriptionState extends State<EventsDescription> {
  void _launchURL(String url) async {
    if (!await launch(url)) throw 'Could not launch $url';
  }
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body:SingleChildScrollView(
        child: Column(
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
           Center(
             child: Container(
                 height:SizeConfig.deviceHeight*0.2,
               width:SizeConfig.deviceWidth*0.9,
               child: Card(
                 elevation:5,
                 child:Row(
                   children: [

                     Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: Container(
                         height:SizeConfig.deviceHeight*0.16,width: SizeConfig.deviceWidth*0.3,
                         decoration: BoxDecoration(
                             borderRadius: BorderRadius.all(Radius.circular(10)),
                             image: DecorationImage(image: AssetImage('assets/11.jpg'),fit: BoxFit.cover)),
                       ),
                     ),
                     Column(
                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Text('INNOSKILL Squared \nChallenge in Engineering\n and Design',style:GoogleFonts.signika(color:Color.fromRGBO(4, 22, 48, 1),fontSize: SizeConfig.deviceHeight*0.02)),
                         InkWell(
                           onTap:(){
                             _launchURL('https://innoskill.mriic.tech/index.php/elementor-1010/');
                           },
                           child: Container(
                               height:SizeConfig.deviceHeight*0.04,
                               width:SizeConfig.deviceWidth*0.4,
                               decoration: BoxDecoration(color:Color.fromRGBO(4, 22, 48, 1),
                                   borderRadius: BorderRadius.all(Radius.circular(20))
                               ),
                               child:Center(child: Text('Check out',style: GoogleFonts.signika(color:Colors.white,),))
                           ),
                         ),
                       ],
                     )
                   ],
                 )
               ),
             ),
           ),
            Center(
              child: Container(
                height:SizeConfig.deviceHeight*0.2,
                width:SizeConfig.deviceWidth*0.9,
                child: Card(
                    elevation:5,
                    child:Row(
                      children: [

                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height:SizeConfig.deviceHeight*0.16,width: SizeConfig.deviceWidth*0.3,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                                image: DecorationImage(image: AssetImage('assets/12.jpg'),fit: BoxFit.cover)),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('INNOSKILL Healthcare\n Mystery',style:GoogleFonts.signika(color:Color.fromRGBO(4, 22, 48, 1),fontSize: SizeConfig.deviceHeight*0.02)),
                            InkWell(
                              onTap:(){
                                _launchURL('https://innoskill.mriic.tech/index.php/innoskill-healthcare-mystery/');
                              },
                              child: Container(
                                  height:SizeConfig.deviceHeight*0.04,
                                  width:SizeConfig.deviceWidth*0.4,
                                  decoration: BoxDecoration(color:Color.fromRGBO(4, 22, 48, 1),
                                      borderRadius: BorderRadius.all(Radius.circular(20))
                                  ),
                                  child:Center(child: Text('Check out',style: GoogleFonts.signika(color:Colors.white,),))
                              ),
                            ),
                          ],
                        )
                      ],
                    )
                ),
              ),
            ),
            Center(
              child: Container(
                height:SizeConfig.deviceHeight*0.2,
                width:SizeConfig.deviceWidth*0.9,
                child: Card(
                    elevation:5,
                    child:Row(
                      children: [

                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height:SizeConfig.deviceHeight*0.16,width: SizeConfig.deviceWidth*0.3,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                                image: DecorationImage(image: AssetImage('assets/13.jpg'),fit: BoxFit.cover)),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('INNOSKILL Sustainability,\n Eduskill and Culinary\n Successor',style:GoogleFonts.signika(color:Color.fromRGBO(4, 22, 48, 1),fontSize: SizeConfig.deviceHeight*0.02)),
                            InkWell(
                              onTap:(){
                                _launchURL('https://innoskill.mriic.tech/index.php/innoskill-sustainability-eduskill-and-culinary-successor/');
                              },
                              child: Container(
                                  height:SizeConfig.deviceHeight*0.04,
                                  width:SizeConfig.deviceWidth*0.4,
                                  decoration: BoxDecoration(color:Color.fromRGBO(4, 22, 48, 1),
                                      borderRadius: BorderRadius.all(Radius.circular(20))
                                  ),
                                  child:Center(child: Text('Check out',style: GoogleFonts.signika(color:Colors.white,),))
                              ),
                            ),
                          ],
                        )
                      ],
                    )
                ),
              ),
            ),
            Center(
              child: Container(
                height:SizeConfig.deviceHeight*0.2,
                width:SizeConfig.deviceWidth*0.9,
                child: Card(
                    elevation:5,
                    child:Row(
                      children: [

                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height:SizeConfig.deviceHeight*0.16,width: SizeConfig.deviceWidth*0.3,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                                image: DecorationImage(image: AssetImage('assets/14.jpg'),fit: BoxFit.cover)),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('INNOSKILL Media and \nLiterary Stumper',style:GoogleFonts.signika(color:Color.fromRGBO(4, 22, 48, 1),fontSize: SizeConfig.deviceHeight*0.02)),
                            InkWell(
                              onTap:(){
                                _launchURL('https://innoskill.mriic.tech/index.php/innoskill-media-and-literary-stumper/');
                              },
                              child: Container(
                                  height:SizeConfig.deviceHeight*0.04,
                                  width:SizeConfig.deviceWidth*0.4,
                                  decoration: BoxDecoration(color:Color.fromRGBO(4, 22, 48, 1),
                                      borderRadius: BorderRadius.all(Radius.circular(20))
                                  ),
                                  child:Center(child: Text('Check out',style: GoogleFonts.signika(color:Colors.white,),))
                              ),
                            ),
                          ],
                        )
                      ],
                    )
                ),
              ),
            ),
            Center(
              child: Container(
                height:SizeConfig.deviceHeight*0.2,
                width:SizeConfig.deviceWidth*0.9,
                child: Card(
                    elevation:5,
                    child:Row(
                      children: [

                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height:SizeConfig.deviceHeight*0.16,width: SizeConfig.deviceWidth*0.3,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                                image: DecorationImage(image: AssetImage('assets/15.jpg'),fit: BoxFit.cover)),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('INNOSKILL Business and\n Management Conundrum',style:GoogleFonts.signika(color:Color.fromRGBO(4, 22, 48, 1),fontSize: SizeConfig.deviceHeight*0.02)),
                            InkWell(
                              onTap:(){
                                _launchURL('https://innoskill.mriic.tech/index.php/innoskill-business-and-commerce-conundrum/');
                              },
                              child: Container(
                                  height:SizeConfig.deviceHeight*0.04,
                                  width:SizeConfig.deviceWidth*0.4,
                                  decoration: BoxDecoration(color:Color.fromRGBO(4, 22, 48, 1),
                                      borderRadius: BorderRadius.all(Radius.circular(20))
                                  ),
                                  child:Center(child: Text('Check out',style: GoogleFonts.signika(color:Colors.white,),))
                              ),
                            ),
                          ],
                        )
                      ],
                    )
                ),
              ),
            ),
            Center(
              child: Container(
                height:SizeConfig.deviceHeight*0.2,
                width:SizeConfig.deviceWidth*0.9,
                child: Card(
                    elevation:5,
                    child:Row(
                      children: [

                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height:SizeConfig.deviceHeight*0.16,width: SizeConfig.deviceWidth*0.3,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                                image: DecorationImage(image: AssetImage('assets/16.jpg'),fit: BoxFit.cover)),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('INNOSKILL Social Spectrum',style:GoogleFonts.signika(color:Color.fromRGBO(4, 22, 48, 1),fontSize: SizeConfig.deviceHeight*0.02)),
                            InkWell(
                              onTap:(){
                                _launchURL('https://innoskill.mriic.tech/index.php/innoskill-social-spectrum/');
                              },
                              child: Container(
                                  height:SizeConfig.deviceHeight*0.04,
                                  width:SizeConfig.deviceWidth*0.4,
                                  decoration: BoxDecoration(color:Color.fromRGBO(4, 22, 48, 1),
                                      borderRadius: BorderRadius.all(Radius.circular(20))
                                  ),
                                  child:Center(child: Text('Check out',style: GoogleFonts.signika(color:Colors.white,),))
                              ),
                            ),
                          ],
                        )
                      ],
                    )
                ),
              ),
            ),
            Center(
              child: Container(
                height:SizeConfig.deviceHeight*0.2,
                width:SizeConfig.deviceWidth*0.9,
                child: Card(
                    elevation:5,
                    child:Row(
                      children: [

                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height:SizeConfig.deviceHeight*0.16,width: SizeConfig.deviceWidth*0.3,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                                image: DecorationImage(image: AssetImage('assets/17.JPG'),fit: BoxFit.cover)),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('INNOSKILL LAW knot',style:GoogleFonts.signika(color:Color.fromRGBO(4, 22, 48, 1),fontSize: SizeConfig.deviceHeight*0.02)),
                            InkWell(
                              onTap:(){
                                _launchURL('https://innoskill.mriic.tech/index.php/innoskill-law-knot/');
                              },
                              child: Container(
                                  height:SizeConfig.deviceHeight*0.04,
                                  width:SizeConfig.deviceWidth*0.4,
                                  decoration: BoxDecoration(color:Color.fromRGBO(4, 22, 48, 1),
                                      borderRadius: BorderRadius.all(Radius.circular(20))
                                  ),
                                  child:Center(child: Text('Check out',style: GoogleFonts.signika(color:Colors.white,),))
                              ),
                            ),
                          ],
                        )
                      ],
                    )
                ),
              ),
            ),
            Center(
              child: Container(
                height:SizeConfig.deviceHeight*0.2,
                width:SizeConfig.deviceWidth*0.9,
                child: Card(
                    elevation:5,
                    child:Row(
                      children: [

                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height:SizeConfig.deviceHeight*0.16,width: SizeConfig.deviceWidth*0.3,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                                image: DecorationImage(image: AssetImage('assets/18.jpg'),fit: BoxFit.cover)),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('INNOSKILL Sports Pioneer',style:GoogleFonts.signika(color:Color.fromRGBO(4, 22, 48, 1),fontSize: SizeConfig.deviceHeight*0.02)),
                            InkWell(
                              onTap: (){
                                _launchURL('https://innoskill.mriic.tech/index.php/innoskill-sports-pioneer/');
                              },
                              child: Container(
                                  height:SizeConfig.deviceHeight*0.04,
                                  width:SizeConfig.deviceWidth*0.4,
                                  decoration: BoxDecoration(color:Color.fromRGBO(4, 22, 48, 1),
                                      borderRadius: BorderRadius.all(Radius.circular(20))
                                  ),
                                  child:Center(child: Text('Check out',style: GoogleFonts.signika(color:Colors.white,),))
                              ),
                            ),
                          ],
                        )
                      ],
                    )
                ),
              ),
            ),
            Center(
              child: Container(
                height:SizeConfig.deviceHeight*0.2,
                width:SizeConfig.deviceWidth*0.9,
                child: Card(
                    elevation:5,
                    child:Row(
                      children: [

                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height:SizeConfig.deviceHeight*0.16,width: SizeConfig.deviceWidth*0.3,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                                image: DecorationImage(image: AssetImage('assets/19.jpg'),fit: BoxFit.cover)),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('INNOSKILL Advance Guard',style:GoogleFonts.signika(color:Color.fromRGBO(4, 22, 48, 1),fontSize: SizeConfig.deviceHeight*0.02)),
                            InkWell(
                              onTap:(){
                                _launchURL('https://innoskill.mriic.tech/index.php/innoskill-advance-guard/');
                              },
                              child: Container(
                                  height:SizeConfig.deviceHeight*0.04,
                                  width:SizeConfig.deviceWidth*0.4,
                                  decoration: BoxDecoration(color:Color.fromRGBO(4, 22, 48, 1),
                                      borderRadius: BorderRadius.all(Radius.circular(20))
                                  ),
                                  child:Center(child: Text('Check out',style: GoogleFonts.signika(color:Colors.white,),))
                              ),
                            ),
                          ],
                        )
                      ],
                    )
                ),
              ),
            ),
            SizedBox(height:SizeConfig.deviceHeight*0.04)
          ],
        ),
      )
    );
  }
}
