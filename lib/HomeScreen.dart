import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:url_launcher/url_launcher.dart';


import 'classlistview.dart';
import 'constants.dart';

class HomeScreen extends StatefulWidget {

  HomeScreen();

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  void _launchURL(String url) async {
    if (!await launch(url)) throw 'Could not launch $url';
  }
  List<ClassListData> mealsListData=[];
  @override
  void initState() {
     mealsListData = ClassListData.tabIconsList;



    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(

      body:SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height:SizeConfig.deviceHeight*0.06),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Text('YOUR LECTURES',style:GoogleFonts.signika(color:Color.fromRGBO(4, 22, 48, 1),fontSize: SizeConfig.deviceHeight*0.03,fontWeight: FontWeight.bold)),
           ),

            Container(
              height:SizeConfig.deviceHeight*0.27,

              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: mealsListData.length,
                itemBuilder: (context,index){
                  return Container(
                    height:SizeConfig.deviceHeight*0.27,
                    width: SizeConfig.deviceWidth*0.5,
                    child: SizedBox(
                      width: SizeConfig.deviceWidth*0.3,
                      child: Stack(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 32, left: 8, right: 8, bottom: 16),
                            child: Container(
                              decoration: BoxDecoration(
                                boxShadow: <BoxShadow>[
                                  BoxShadow(
                                      color: HexColor(mealsListData[index].endColor)
                                          .withOpacity(0.6),
                                      offset: const Offset(1.1, 4.0),
                                      blurRadius: 8.0),
                                ],
                                gradient: LinearGradient(
                                  colors: <HexColor>[
                                    HexColor(mealsListData[index].startColor),
                                    HexColor(mealsListData[index].endColor),
                                  ],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                ),
                                borderRadius: const BorderRadius.only(
                                  bottomRight: Radius.circular(8.0),
                                  bottomLeft: Radius.circular(8.0),
                                  topLeft: Radius.circular(8.0),
                                  topRight: Radius.circular(54.0),
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    top: 54, left: 16, right: 16, bottom: 8),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      mealsListData[index].titleTxt,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(

                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                        letterSpacing: 0.2,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding:
                                        const EdgeInsets.only(top: 8, bottom: 8),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              mealsListData[index].meals!.join('\n'),
                                              style: TextStyle(

                                                fontWeight: FontWeight.w500,
                                                fontSize: 10,
                                                letterSpacing: 0.2,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    mealsListData[index].kacl != '`'
                                        ? Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 4, bottom: 3),
                                          child: Text(
                                            'Room No.',
                                            style: TextStyle(

                                              fontWeight: FontWeight.w500,
                                              fontSize: 10,
                                              letterSpacing: 0.2,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                        Text(
                                          mealsListData[index].kacl.toString(),
                                          textAlign: TextAlign.center,
                                          style: TextStyle(

                                            fontWeight: FontWeight.w500,
                                            fontSize: 24,
                                            letterSpacing: 0.2,
                                            color: Colors.white,
                                          ),
                                        ),

                                      ],
                                    )
                                        : Container(
                                      decoration: BoxDecoration(
                                        color:Colors.white,
                                        shape: BoxShape.circle,
                                        boxShadow: <BoxShadow>[
                                          BoxShadow(
                                              color:Colors.black
                                                  .withOpacity(0.4),
                                              offset: Offset(8.0, 8.0),
                                              blurRadius: 8.0),
                                        ],
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(6.0),
                                        child: Icon(
                                          Icons.add,
                                          color: HexColor(mealsListData[index].endColor),
                                          size: 24,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 0,
                            left: 0,
                            child: Container(
                              width: 84,
                              height: 84,
                              decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.2),
                                shape: BoxShape.circle,
                              ),
                            ),
                          ),
                          Positioned(
                            top: 0,
                            left: 8,
                            child: SizedBox(
                              width: 80,
                              height: 80,
                              child: Image.asset(mealsListData[index].imagePath),
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },

              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('YOUR ASSIGNMENTS',style:GoogleFonts.signika(color:Color.fromRGBO(4, 22, 48, 1),fontSize: SizeConfig.deviceHeight*0.03,fontWeight: FontWeight.bold)),
            ),
            Container(
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
                  InkWell(
                    onTap:(){
                      _launchURL('https://manavrachna.edu.in/student-erp/');
                    },
                    child: Card(
                      color: Colors.white,
                      elevation: 5,
                      child: Column(

                        children:[
                          Text('Compiler Design',style:GoogleFonts.signika(color:Color.fromRGBO(4, 22, 48, 0.7),fontSize: SizeConfig.deviceHeight*0.023,fontWeight: FontWeight.bold),),
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
                  InkWell(
                    onTap:(){
                      _launchURL('https://manavrachna.edu.in/student-erp/');
                    },
                    child: Card(
                      color: Colors.white,
                      elevation: 5,
                      child: Column(

                          children:[
                            Text('ADBMS',style:GoogleFonts.signika(color:Color.fromRGBO(4, 22, 48, 0.7),fontSize: SizeConfig.deviceHeight*0.023,fontWeight: FontWeight.bold),),
                            Text('Release date: 6-04-2022',style:GoogleFonts.signika(color:Colors.grey)),
                            Text('Due date:11-04-2022',style:GoogleFonts.signika(color:Colors.grey)),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text('Hurry\n up!',style:GoogleFonts.signika(color:Color.fromRGBO(4, 22, 48, 0.7),fontSize: SizeConfig.deviceHeight*0.025)),
                                Image.asset('assets/2.png')
                              ],
                            )

                          ]
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      _launchURL('https://manavrachna.edu.in/student-erp/');
                    },
                    child: Card(
                      color: Colors.white,
                      elevation: 5,
                      child: Column(

                          children:[
                            Text('IOT',style:GoogleFonts.signika(color:Color.fromRGBO(4, 22, 48, 0.7),fontSize: SizeConfig.deviceHeight*0.023,fontWeight: FontWeight.bold),),
                            Text('Release date: 11-04-2022',style:GoogleFonts.signika(color:Colors.grey)),
                            Text('Due date:17-04-2022',style:GoogleFonts.signika(color:Colors.grey)),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text('Have\n time!',style:GoogleFonts.signika(color:Color.fromRGBO(4, 22, 48, 0.7),fontSize: SizeConfig.deviceHeight*0.025)),
                                Image.asset('assets/3.png')
                              ],
                            )

                          ]
                      ),
                    ),
                  ),
                  InkWell(
                    onTap:(){
                      _launchURL('https://manavrachna.edu.in/student-erp/');
                    },
                    child: Card(
                      color: Colors.white,
                      elevation: 5,
                      child: Column(

                          children:[
                            Text('Aptitude',style:GoogleFonts.signika(color:Color.fromRGBO(4, 22, 48, 0.7),fontSize: SizeConfig.deviceHeight*0.023,fontWeight: FontWeight.bold),),
                            Text('Release date: 06-04-2022',style:GoogleFonts.signika(color:Colors.grey)),
                            Text('Due date:12-04-2022',style:GoogleFonts.signika(color:Colors.grey)),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text('Got no\n chill!',style:GoogleFonts.signika(color:Color.fromRGBO(4, 22, 48, 0.7),fontSize: SizeConfig.deviceHeight*0.025)),
                                Image.asset('assets/4.png')
                              ],
                            )

                          ]
                      ),
                    ),
                  )
                ],
              ),
            ),


          ],
        ),
      )

    );
  }
}


