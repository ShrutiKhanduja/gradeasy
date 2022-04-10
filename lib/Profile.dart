

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gradeasy/Tetris/gameScreen.dart';

class Profile extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      body: SafeArea(
        child: ListView(
          children: [
            _heading(),
            _intro(),
            _information(),
            _list(context),
            _information2(),
            _list2(),
          ],
        ),
      ),
    );
  }

  Widget _heading() {
    return Padding(
      padding: EdgeInsets.only(top:20),
      child: Center(
        child: Text(
          'PROFILE',
          style: TextStyle(
            fontWeight: FontWeight.bold,

            fontSize: 20,
            letterSpacing: 2,
          ),
        ),
      ),
    );
  }

  Widget _intro() {
    return Padding(
      padding: const EdgeInsets.all(30),
      child: Container(
        child: Row(
          children: <Widget>[
            CircleAvatar(
                    radius: 50,

                  ),

            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                    "Paresh Gupta",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,

                      fontSize: 30,
                      letterSpacing: 1.6,
                    ),
                  ),

                SizedBox(height: 70),
                Padding(
                  padding: const EdgeInsets.only(left: 4.0),
                  child: Text(
                      "Gupta",
                      style: TextStyle(
                        fontSize:40,
                       color:Colors.indigo
                      ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _information() {
    return Container(
      color: Colors.pinkAccent,
      child: Padding(
        padding: EdgeInsets.only(left:  20),
        child: Text('Profile  And  Account'),
      ),
    );
  }

  Widget _list(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          InkWell(
            child: Padding(
              padding: EdgeInsets.fromLTRB(
                    20,  30,  5, 0),
              child: Text(
                'Change Goal',
                style: GoogleFonts.sourceSansPro(
                    fontSize:  25,

                    letterSpacing: 1.6),
              ),
            ),
            onTap: () {

            },
          ),
          InkWell(
            child: Padding(
              padding: EdgeInsets.fromLTRB(
                   20, 40,  5, 0),
              child: Text(
                'Update Body Information',
                style: GoogleFonts.sourceSansPro(
                    fontSize: 25,

                    letterSpacing: 1.6),
              ),
            ),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder:(context) =>Tetris()
              ));},
          ),
          InkWell(
            child: Padding(
              padding: EdgeInsets.fromLTRB(
                 20,  40,  5, 0),
              child: Text(
                'Reset Password',
                style: GoogleFonts.sourceSansPro(
                    fontSize:  25,

                    letterSpacing: 1.6),
              ),
            ),
            onTap: () {

            },
          ),
          InkWell(
            child: Padding(
              padding: EdgeInsets.fromLTRB(
                  20,  40,  5, 40),
              child: Text(
                'Logs',
                style: GoogleFonts.sourceSansPro(
                    fontSize:25,

                    letterSpacing: 1.6),
              ),
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }

  Widget _information2() {
    return Container(

      child: Padding(
        padding: EdgeInsets.only(left:  20),
        child: Text('Support'),
      ),
    );
  }

  Widget _list2() {


    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        InkWell(
          child: Padding(
            padding: EdgeInsets.fromLTRB(
                20,  30,  5, 0),
            child: Text(
              'Contact Support',
              style: GoogleFonts.sourceSansPro(
                  fontSize:25,
                  color: Colors.white,
                  letterSpacing: 1.6),
            ),
          ),
          onTap: () {},
        ),
        InkWell(
          child: Padding(
            padding: EdgeInsets.fromLTRB(
              20,  40, 5, 0),
            child: Text(
              'Rate On AppStore',
              style: GoogleFonts.sourceSansPro(
                  fontSize:  25,
                  color: Colors.red,
                  letterSpacing: 1.6),
            ),
          ),
          onTap: () {

          },
        ),
        InkWell(
          child: Padding(
            padding: EdgeInsets.fromLTRB(
                20,  40, 5,  40),
            child: Text(
              'Share With Friends',
              style: GoogleFonts.sourceSansPro(
                  fontSize:  25,

                  letterSpacing: 1.6),
            ),
          ),
          onTap: () {

          },
        ),
      ],
    );
  }
}
