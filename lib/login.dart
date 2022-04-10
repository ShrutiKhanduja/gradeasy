import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gradeasy/bottom_navBar.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'constants.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // for email text field controller
  final TextEditingController _emailcontroller = TextEditingController();
  late SharedPreferences prefs;
  void pref()async {
  prefs= await SharedPreferences.getInstance();
  }

  // for password text field controller
  final TextEditingController _passwordcontroller = TextEditingController();
  bool isHiddenPassword = true;
  late FocusNode _myFocusNodeEmail;
  late FocusNode _myFocusNodePassword;
  @override
  void initState() {
    super.initState();
    pref();

    _myFocusNodeEmail = FocusNode();
    _myFocusNodeEmail.addListener(() {
      setState(() {});
    });

    _myFocusNodePassword = FocusNode();
    _myFocusNodePassword.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    super.dispose();
    _myFocusNodeEmail.removeListener(() {});
    _myFocusNodeEmail.dispose();

    _myFocusNodePassword.removeListener(() {});
    _myFocusNodePassword.dispose();
  }
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body:Column(
        children: [
          SizedBox(height:SizeConfig.deviceHeight*0.06),
          Column(
            children:[
              SizedBox(height:SizeConfig.deviceHeight*0.03),
              Text('WELCOME TO GRADEASY!',style:GoogleFonts.signika(color:Color.fromRGBO(4, 22, 48, 1),fontSize: SizeConfig.deviceHeight*0.035


              )),
              SizedBox(height:SizeConfig.deviceHeight*0.06),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller:_emailcontroller,
                  cursorColor:Color.fromRGBO(4, 22, 48, 1),
                  focusNode: _myFocusNodeEmail,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email,color:_myFocusNodeEmail.hasFocus?Color.fromRGBO(4, 22, 48, 1):Colors.grey ,),
                    labelText: "Enter your college email",
                    labelStyle: GoogleFonts.signika(color:_myFocusNodeEmail.hasFocus?Color.fromRGBO(4, 22, 48, 1):Colors.grey),
                    fillColor: Colors.white,
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide: BorderSide(
                        color: Color.fromRGBO(4, 22, 48, 1),
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide: BorderSide(
                        color: Colors.grey,
                        width: 1.0,
                      ),
                    ),
                  ),
                  validator: (val) {
                    if (val?.length == 0) {
                      return "Email cannot be empty";
                    } else {
                      return null;
                    }
                  },
                  keyboardType: TextInputType.emailAddress,
                  style: GoogleFonts.signika(),
                ),
              ),
              SizedBox(height:SizeConfig.deviceHeight*0.02),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: _passwordcontroller,
                  obscureText: isHiddenPassword,
                  cursorColor: Color.fromRGBO(4, 22, 48, 1),
                  focusNode: _myFocusNodePassword,
                  decoration: InputDecoration(

                    prefixIcon: Icon(Icons.lock,color:_myFocusNodePassword.hasFocus?Color.fromRGBO(4, 22, 48, 1):Colors.grey ,),
                    suffixIcon: InkWell(
                        onTap: () {
                          setState(() {
                            isHiddenPassword = !isHiddenPassword;
                          });
                        },
                        child: isHiddenPassword?(Icon(Icons.visibility_off,color:_myFocusNodePassword.hasFocus?Color.fromRGBO(4, 22, 48, 1):Colors.grey )):(Icon(Icons.visibility,color:_myFocusNodePassword.hasFocus?Color.fromRGBO(4, 22, 48, 1):Colors.grey ))
                    ),

                    labelText: "Enter Password",
                    labelStyle: GoogleFonts.signika(color:_myFocusNodePassword.hasFocus?Color.fromRGBO(4, 22, 48, 1):Colors.grey),
                    fillColor: Colors.white,
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide: BorderSide(
                        color: Color.fromRGBO(4, 22, 48, 1),
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide: BorderSide(
                        color: Colors.grey,
                        width: 1.0,
                      ),
                    ),
                  ),
                  validator: (val) {
                    if (val?.length == 0) {
                      return "Password cannot be empty";
                    } else {
                      return null;
                    }
                  },
                  keyboardType: TextInputType.text,
                  style: GoogleFonts.signika(),
                ),
              ),
              SizedBox(height:SizeConfig.deviceHeight*0.04),
              InkWell(
                onTap:(){
                  setState(() {
                    prefs.setString('name', _emailcontroller.text);
                  });
                  Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=>BottomNavBar()));

                },
                child: Container(
                    height: SizeConfig.deviceHeight*0.06,
                    width:SizeConfig.deviceWidth*0.95,
                    decoration: BoxDecoration(
                        color:Color.fromRGBO(4, 22, 48, 1),
                        borderRadius: BorderRadius.all((Radius.circular(10)))
                    ),
                    child:Center(child: Text('LOGIN',style:GoogleFonts.signika(color:Colors.white,fontSize:SizeConfig.deviceHeight*0.02,fontWeight: FontWeight.bold)))
                ),
              ),
            ]
          ),
           SizedBox(height:SizeConfig.deviceHeight*0.1),
           Align(
             alignment: Alignment.bottomCenter,
               child: Image.asset('assets/gg.png')),

        ],
      )
    );
  }
}
