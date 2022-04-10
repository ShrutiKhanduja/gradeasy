import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import 'constants.dart';

class Societies extends StatefulWidget {
  const Societies({Key? key}) : super(key: key);

  @override
  _SocietiesState createState() => _SocietiesState();
}

class _SocietiesState extends State<Societies> {
  void _launchURL(String url) async {
    if (!await launch(url)) throw 'Could not launch $url';
  }
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body:SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height:SizeConfig.deviceHeight*0.06),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(child: Text('SOCIETIES',style:GoogleFonts.signika(color:Color.fromRGBO(4, 22, 48, 1),fontSize: SizeConfig.deviceHeight*0.03,fontWeight: FontWeight.bold))),
            ),
            Stack(
              children: [
                Theme(
                  data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
                  child: ExpansionTile(title: Align(
                    alignment: Alignment.center,
                      child: Text('MRIDAKSH',style:GoogleFonts.signika(color:Color.fromRGBO(4, 22, 48, 1),fontSize: SizeConfig.deviceHeight*0.02,fontWeight: FontWeight.bold))),
                    initiallyExpanded: false,
                    iconColor:Color.fromRGBO(4, 22, 48, 1) ,
                    children: [

                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Align(
                            alignment:Alignment.bottomLeft,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Divider(color:Colors.grey),
                                Row(
                                  children: [
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text('Auditions for freshers',style:GoogleFonts.signika(color:Color.fromRGBO(4, 22, 48, 1),fontSize: SizeConfig.deviceHeight*0.02,)),
                                        Text('Date: 13-18 April',style:GoogleFonts.signika(color:Colors.grey,)),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            Text('Coins :2',style:GoogleFonts.signika(color:Colors.grey,)),
                                            Image.asset('assets/coins.png',height: 20,)
                                          ],
                                        ),
                                      ],
                                    ),
                                    SizedBox(width:20),
                                    InkWell(
                                      onTap:(){
                                        _launchURL("tel://9718764559");
                                      },
                                      child: Container(
                                          height:SizeConfig.deviceHeight*0.04,
                                          width:SizeConfig.deviceWidth*0.4,
                                          decoration: BoxDecoration(color:Color.fromRGBO(4, 22, 48, 1),
                                              borderRadius: BorderRadius.all(Radius.circular(10))
                                          ),
                                          child:Center(child: Text('Contact now',style: GoogleFonts.signika(color:Colors.white,),))
                                      ),
                                    ),
                                  ],
                                ),



                                Divider(color:Colors.grey),
                              ],
                            ),
                          ),
                        )
                    ],),
                ),
                Positioned(

                    child: Padding(
                      padding: const EdgeInsets.only(left:8.0),
                      child: Container(
                        height:SizeConfig.deviceHeight*0.1,width: SizeConfig.deviceWidth*0.3,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            image: DecorationImage(image: AssetImage('assets/dance.png'),fit: BoxFit.fill)),
                      ),
                    )),

              ],
            ),
            Stack(
              children: [
                Theme(
                  data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
                  child: ExpansionTile(title: Align(
                      alignment: Alignment.center,
                      child: Text('SURTARANG',style:GoogleFonts.signika(color:Color.fromRGBO(4, 22, 48, 1),fontSize: SizeConfig.deviceHeight*0.02,fontWeight: FontWeight.bold))),
                    initiallyExpanded: false,
                    iconColor: Color.fromRGBO(4, 22, 48, 1),
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Align(
                          alignment:Alignment.bottomLeft,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Divider(color:Colors.grey),
                              Row(
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Auditions for Vice President',style:GoogleFonts.signika(color:Color.fromRGBO(4, 22, 48, 1),fontSize: SizeConfig.deviceHeight*0.02,)),
                                      Text('Date: 12-16 April',style:GoogleFonts.signika(color:Colors.grey,)),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Text('Coins :4',style:GoogleFonts.signika(color:Colors.grey,)),
                                          Image.asset('assets/coins.png',height: 20,)
                                        ],
                                      ),
                                    ],
                                  ),
                                  SizedBox(width:7),
                                  InkWell(
                                    onTap:(){
                                      _launchURL("tel://9718764559");
                                    },
                                    child: Container(
                                        height:SizeConfig.deviceHeight*0.04,
                                        width:SizeConfig.deviceWidth*0.35,
                                        decoration: BoxDecoration(color:Color.fromRGBO(4, 22, 48, 1),
                                            borderRadius: BorderRadius.all(Radius.circular(10))
                                        ),
                                        child:Center(child: Text('Contact now',style: GoogleFonts.signika(color:Colors.white,),))
                                    ),
                                  ),
                                ],
                              ),



                              Divider(color:Colors.grey),
                            ],
                          ),
                        ),
                      )
                    ],),
                ),
                Positioned(

                    child: Padding(
                      padding: const EdgeInsets.only(left:8.0),
                      child: Container(
                        height:SizeConfig.deviceHeight*0.1,width: SizeConfig.deviceWidth*0.3,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            image: DecorationImage(image: AssetImage('assets/music.png'),fit: BoxFit.fill)),
                      ),
                    )),

              ],
            ),
            Stack(
              children: [
                Theme(
                  data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
                  child: ExpansionTile(title: Align(
                      alignment: Alignment.center,

                      child: Text('AAIRA',style:GoogleFonts.signika(color:Color.fromRGBO(4, 22, 48, 1),fontSize: SizeConfig.deviceHeight*0.02,fontWeight: FontWeight.bold))),
                    initiallyExpanded: false,
                    iconColor: Color.fromRGBO(4, 22, 48, 1),
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Align(
                          alignment:Alignment.bottomLeft,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Divider(color:Colors.grey),
                              Row(
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Auditions for freshers',style:GoogleFonts.signika(color:Color.fromRGBO(4, 22, 48, 1),fontSize: SizeConfig.deviceHeight*0.02,)),
                                      Text('Date: 12-15 April',style:GoogleFonts.signika(color:Colors.grey,)),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Text('Coins :2',style:GoogleFonts.signika(color:Colors.grey,)),
                                          Image.asset('assets/coins.png',height: 20,)
                                        ],
                                      ),
                                    ],
                                  ),
                                  SizedBox(width:20),
                                  InkWell(
                                    onTap:(){
                                      _launchURL("tel://9718764559");
                                    },
                                    child: Container(
                                        height:SizeConfig.deviceHeight*0.04,
                                        width:SizeConfig.deviceWidth*0.4,
                                        decoration: BoxDecoration(color:Color.fromRGBO(4, 22, 48, 1),
                                            borderRadius: BorderRadius.all(Radius.circular(10))
                                        ),
                                        child:Center(child: Text('Contact now',style: GoogleFonts.signika(color:Colors.white,),))
                                    ),
                                  ),
                                ],
                              ),



                              Divider(color:Colors.grey),
                            ],
                          ),
                        ),
                      )
                    ],),
                ),
                Positioned(

                    child: Padding(
                      padding: const EdgeInsets.only(left:8.0),
                      child: Container(
                        height:SizeConfig.deviceHeight*0.12,width: SizeConfig.deviceWidth*0.3,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            image: DecorationImage(image: AssetImage('assets/fashion.png'),fit: BoxFit.cover)),
                      ),
                    )),

              ],
            ),
            Stack(
              children: [
                Theme(
                  data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
                  child: ExpansionTile(title: Align(
                      alignment: Alignment.center,
                      child: Text('PAIGAM',style:GoogleFonts.signika(color:Color.fromRGBO(4, 22, 48, 1),fontSize: SizeConfig.deviceHeight*0.02,fontWeight: FontWeight.bold))),
                    initiallyExpanded: false,
                    iconColor: Color.fromRGBO(4, 22, 48, 1),
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Align(
                          alignment:Alignment.bottomLeft,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Divider(color:Colors.grey),
                              Row(
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Auditions for fest',style:GoogleFonts.signika(color:Color.fromRGBO(4, 22, 48, 1),fontSize: SizeConfig.deviceHeight*0.02,)),
                                      Text('Date: 12-14 April',style:GoogleFonts.signika(color:Colors.grey,)),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Text('Coins :2',style:GoogleFonts.signika(color:Colors.grey,)),
                                          Image.asset('assets/coins.png',height: 20,)
                                        ],
                                      ),
                                    ],
                                  ),
                                  SizedBox(width:20),
                                  InkWell(
                                    onTap:(){
                                      _launchURL("tel://9718764559");
                                    },
                                    child: Container(
                                        height:SizeConfig.deviceHeight*0.04,
                                        width:SizeConfig.deviceWidth*0.4,
                                        decoration: BoxDecoration(color:Color.fromRGBO(4, 22, 48, 1),
                                            borderRadius: BorderRadius.all(Radius.circular(10))
                                        ),
                                        child:Center(child: Text('Contact now',style: GoogleFonts.signika(color:Colors.white,),))
                                    ),
                                  ),
                                ],
                              ),



                              Divider(color:Colors.grey),
                            ],
                          ),
                        ),
                      )
                    ],),
                ),
                Positioned(

                    child: Padding(
                      padding: const EdgeInsets.only(left:8.0),
                      child: Container(
                        height:SizeConfig.deviceHeight*0.12,width: SizeConfig.deviceWidth*0.3,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            image: DecorationImage(image: AssetImage('assets/theatre.png'),fit: BoxFit.cover)),
                      ),
                    )),

              ],
            ),
            Stack(
              children: [
                Theme(
                  data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
                  child: ExpansionTile(title: Align(
                      alignment: Alignment.center,
                      child: Text('AAREKH',style:GoogleFonts.signika(color:Color.fromRGBO(4, 22, 48, 1),fontSize: SizeConfig.deviceHeight*0.02,fontWeight: FontWeight.bold))),
                    initiallyExpanded: false,
                    iconColor:Color.fromRGBO(4, 22, 48, 1),
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Align(
                          alignment:Alignment.bottomLeft,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Divider(color:Colors.grey),
                              Row(
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Auditions for event',style:GoogleFonts.signika(color:Color.fromRGBO(4, 22, 48, 1),fontSize: SizeConfig.deviceHeight*0.02,)),
                                      Text('Date: 10-16 April',style:GoogleFonts.signika(color:Colors.grey,)),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Text('Coins :3',style:GoogleFonts.signika(color:Colors.grey,)),
                                          Image.asset('assets/coins.png',height: 20,)
                                        ],
                                      ),
                                    ],
                                  ),
                                  SizedBox(width:20),
                                  InkWell(
                                    onTap:(){
                                      _launchURL("tel://9718764559");
                                    },
                                    child: Container(
                                        height:SizeConfig.deviceHeight*0.04,
                                        width:SizeConfig.deviceWidth*0.4,
                                        decoration: BoxDecoration(color:Color.fromRGBO(4, 22, 48, 1),
                                            borderRadius: BorderRadius.all(Radius.circular(10))
                                        ),
                                        child:Center(child: Text('Contact now',style: GoogleFonts.signika(color:Colors.white,),))
                                    ),
                                  ),
                                ],
                              ),



                              Divider(color:Colors.grey),
                            ],
                          ),
                        ),
                      )
                    ],),
                ),
                Positioned(

                    child: Padding(
                      padding: const EdgeInsets.only(left:8.0),
                      child: Container(
                        height:SizeConfig.deviceHeight*0.12,width: SizeConfig.deviceWidth*0.3,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            image: DecorationImage(image: AssetImage('assets/art.png'),fit: BoxFit.cover)),
                      ),
                    )),

              ],
            ),
          ],
        ),
      ),

    );
  }
}
