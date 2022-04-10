

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gradeasy/Tetris/gameScreen.dart';
import 'package:gradeasy/constants.dart';

class Profile extends StatefulWidget {

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  bool isObscurePassword=true;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      appBar: AppBar(
        title: Center(child: Text("PROFILE",style:GoogleFonts.signika(color:Color.fromRGBO(4, 22, 48, 1),fontSize: SizeConfig.deviceHeight*0.03,fontWeight: FontWeight.bold))),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {  },

        ),
        actions: [
          IconButton(onPressed: (){}, icon:Icon(Icons.settings),

          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.only(left: 15,top: 20,right: 15),
        child: GestureDetector(
          onTap: (){
            FocusScope.of(context).unfocus();
          },
child: ListView(
  children: [
    Center(
      child: Stack(
        children: [
          Container(
            width: 130,
            height: 130,
            decoration: BoxDecoration(
              border: Border.all(width: 4,color: Colors.white),
             boxShadow: [
               BoxShadow(
                 spreadRadius: 2,
                 blurRadius: 10,
                 color: Colors.black.withOpacity(0.1),

               )
             ],
              shape: BoxShape.circle,
              image: DecorationImage(
                fit: BoxFit.cover,

                image:AssetImage(
                  "indu.png"
                )
              )
          ),
          ),
        Positioned(
            bottom:0,
            right: 0,
            child:
       Container(
         height: 40,
         width: 40,
         decoration: BoxDecoration(
           shape: BoxShape.circle,
           border: Border.all(
             width: 4,
             color: Colors.white
           ),
           color: Colors.blue,

         ),
         child:Icon(
           Icons.edit,
           color: Colors.white,
         ) ,
       ) )

        ],

      ),
    ),
    Center(child: Text("Indu Kashap",style:GoogleFonts.signika(color:Color.fromRGBO(4, 22, 48, 1),fontSize: SizeConfig.deviceHeight*0.03,fontWeight: FontWeight.bold)),),
    SizedBox(
height:30 ,
    ),
    buildTextField(
      "User Name", "Paresh",false
    ),
    buildTextField(
        "University Email", "xyz@gmail.com",false
    ),
    buildTextField(
        "Password", "*********",true
    ),
    buildTextField(
        "TRN Number", "1/19/fet/bcs/081",false
    ),

    SizedBox(height: 10,),

Row(
mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
    OutlinedButton(onPressed: (){}, child: Text(
        "CANCEL",style: TextStyle(
      fontSize: 15,
      letterSpacing: 2,
      color: Colors.black,
    ),)
    ,
    style: OutlinedButton.styleFrom(
      padding: EdgeInsets.symmetric(horizontal: 50),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    ),),
    ElevatedButton(onPressed: (){}, child:
    Text("Save",style: TextStyle(
      fontSize: 15,
      letterSpacing: 2,
      color: Colors.white,
    ),),
      style: ElevatedButton.styleFrom(
        primary: Colors.blue,
        padding: EdgeInsets.symmetric(horizontal: 50),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))

      ),
    )
  ],
)
  ],
),
        ),
      ),
    );
  }
  Widget buildTextField(String labelText,String placeholder,bool isPasswordTextField ){
return Padding(padding: EdgeInsets.only(bottom: 30),
child: TextField(
obscureText: isPasswordTextField? isObscurePassword:false,
  decoration: InputDecoration(
    suffixIcon: isPasswordTextField?
        IconButton(onPressed: (){}, icon:Icon( Icons.remove_red_eye),color: Colors.grey):null
  ,
  contentPadding: EdgeInsets.only(bottom: 5),
  labelText: labelText,
    floatingLabelBehavior: FloatingLabelBehavior.always,
    hintText: placeholder,
    helperStyle: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.bold,
      color: Colors.grey,
    ),
  ),
),);
  }
}




    //Scaffold(
  //     backgroundColor: Colors.indigo,
  //     body: SafeArea(
  //       child: ListView(
  //         children: [
  //           _heading(),
  //           _intro(),
  //           _information(),
  //           _list(context),
  //           _information2(),
  //           _list2(),
  //         ],
  //       ),
  //     ),
  //   );
  // }
  //
  // Widget _heading() {
  //   return Padding(
  //     padding: EdgeInsets.only(top:20),
  //     child: Center(
  //       child: Text(
  //         'PROFILE',
  //         style: TextStyle(
  //           fontWeight: FontWeight.bold,
  //
  //           fontSize: 20,
  //           letterSpacing: 2,
  //         ),
  //       ),
  //     ),
  //   );
  // }
  //
  // Widget _intro() {
  //   return Padding(
  //     padding: const EdgeInsets.all(30),
  //     child: Container(
  //       child: Row(
  //         children: <Widget>[
  //           CircleAvatar(
  //                   radius: 50,
  //
  //                 ),
  //
  //           SizedBox(width: 10),
  //           Column(
  //             crossAxisAlignment: CrossAxisAlignment.start,
  //             children: <Widget>[
  //               Text(
  //                   "Paresh Gupta",
  //                   style: TextStyle(
  //                     fontWeight: FontWeight.bold,
  //
  //                     fontSize: 30,
  //                     letterSpacing: 1.6,
  //                   ),
  //                 ),
  //
  //               SizedBox(height: 70),
  //               Padding(
  //                 padding: const EdgeInsets.only(left: 4.0),
  //                 child: Text(
  //                     "Gupta",
  //                     style: TextStyle(
  //                       fontSize:40,
  //                      color:Colors.indigo
  //                     ),
  //                 ),
  //               ),
  //             ],
  //           ),
  //         ],
  //       ),
  //     ),
  //   );
  // }
  //
  // Widget _information() {
  //   return Container(
  //     color: Colors.pinkAccent,
  //     child: Padding(
  //       padding: EdgeInsets.only(left:  20),
  //       child: Text('Profile  And  Account'),
  //     ),
  //   );
  // }
  //
  // Widget _list(BuildContext context) {
  //   return Container(
  //     child: Column(
  //       crossAxisAlignment: CrossAxisAlignment.start,
  //       children: <Widget>[
  //         InkWell(
  //           child: Padding(
  //             padding: EdgeInsets.fromLTRB(
  //                   20,  30,  5, 0),
  //             child: Text(
  //               'Change Goal',
  //               style: GoogleFonts.sourceSansPro(
  //                   fontSize:  25,
  //
  //                   letterSpacing: 1.6),
  //             ),
  //           ),
  //           onTap: () {
  //
  //           },
  //         ),
  //         InkWell(
  //           child: Padding(
  //             padding: EdgeInsets.fromLTRB(
  //                  20, 40,  5, 0),
  //             child: Text(
  //               'Update Body Information',
  //               style: GoogleFonts.sourceSansPro(
  //                   fontSize: 25,
  //
  //                   letterSpacing: 1.6),
  //             ),
  //           ),
  //           onTap: () {
  //             Navigator.push(context, MaterialPageRoute(builder:(context) =>Tetris()
  //             ));},
  //         ),
  //         InkWell(
  //           child: Padding(
  //             padding: EdgeInsets.fromLTRB(
  //                20,  40,  5, 0),
  //             child: Text(
  //               'Reset Password',
  //               style: GoogleFonts.sourceSansPro(
  //                   fontSize:  25,
  //
  //                   letterSpacing: 1.6),
  //             ),
  //           ),
  //           onTap: () {
  //
  //           },
  //         ),
  //         InkWell(
  //           child: Padding(
  //             padding: EdgeInsets.fromLTRB(
  //                 20,  40,  5, 40),
  //             child: Text(
  //               'Logs',
  //               style: GoogleFonts.sourceSansPro(
  //                   fontSize:25,
  //
  //                   letterSpacing: 1.6),
  //             ),
  //           ),
  //           onTap: () {},
  //         ),
  //       ],
  //     ),
  //   );
  // }
  //
  // Widget _information2() {
  //   return Container(
  //
  //     child: Padding(
  //       padding: EdgeInsets.only(left:  20),
  //       child: Text('Support'),
  //     ),
  //   );
  // }
  //
  // Widget _list2() {
  //
  //
  //   return Column(
  //     crossAxisAlignment: CrossAxisAlignment.start,
  //     children: <Widget>[
  //       InkWell(
  //         child: Padding(
  //           padding: EdgeInsets.fromLTRB(
  //               20,  30,  5, 0),
  //           child: Text(
  //             'Contact Support',
  //             style: GoogleFonts.sourceSansPro(
  //                 fontSize:25,
  //                 color: Colors.white,
  //                 letterSpacing: 1.6),
  //           ),
  //         ),
  //         onTap: () {},
  //       ),
  //       InkWell(
  //         child: Padding(
  //           padding: EdgeInsets.fromLTRB(
  //             20,  40, 5, 0),
  //           child: Text(
  //             'Rate On AppStore',
  //             style: GoogleFonts.sourceSansPro(
  //                 fontSize:  25,
  //                 color: Colors.red,
  //                 letterSpacing: 1.6),
  //           ),
  //         ),
  //         onTap: () {
  //
  //         },
  //       ),
  //       InkWell(
  //         child: Padding(
  //           padding: EdgeInsets.fromLTRB(
  //               20,  40, 5,  40),
  //           child: Text(
  //             'Share With Friends',
  //             style: GoogleFonts.sourceSansPro(
  //                 fontSize:  25,
  //
  //                 letterSpacing: 1.6),
  //           ),
  //         ),
  //         onTap: () {
  //
  //         },
  //       ),
  //     ],
  //   );

