import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:tmapp/MainFiles/HomePage.dart';
import 'package:tmapp/ReusableWidgets/FadeAnimation.dart';
import 'package:tmapp/ReusableWidgets/CustomButton.dart';
import 'package:tmapp/ReusableWidgets/CustomInputTextField.dart';
import 'package:tmapp/ReusableWidgets/themes.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String personal_Id = "", pass = "";
  bool _showPassword = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: FadeAnimation(
          delay: 1.0,
          child: Container(
            padding: EdgeInsets.all(20),
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/Loginbackground.png'),
                  fit: BoxFit.fill),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: 60,
                  width: 200,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image:
                            AssetImage('assets/Logo/LogoBlue/logoFullBlue.png'),
                        fit: BoxFit.fitWidth),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Welcome',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  'Sign in to continue.',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  height: 45,
                  width: double.infinity,
                  child: TextField(
                    onChanged: (String text) {
                      personal_Id = text;
                    },
                    onSubmitted: (String text) {
                      personal_Id = text;
                    },
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.grey[200],
                        prefixIcon: Icon(
                          Icons.alternate_email,
                          color: primaryblue,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4.0),
                          borderSide: BorderSide(color: Colors.grey[300]),
                        ),
                        hintText: 'Personal Id',
                        hintStyle: TextStyle(color: Colors.grey)),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: 45,
                  width: double.infinity,
                  child: TextField(
                    onChanged: (String text) {
                      pass = text;
                    },
                    onSubmitted: (String text) {
                      pass = text;
                      if(personal_Id == "production0" && pass == "production0"){
                        Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: Homepage(authLevel: 0, userDepartment: "production",)));
                      }else if(personal_Id == "production1" && pass == "production1"){
                        Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: Homepage(authLevel: 1, userDepartment: "production",)));
                      }else if(personal_Id == "maintenance0" && pass == "maintenance0"){
                        Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: Homepage(authLevel: 0, userDepartment: "maintenance",)));
                      }else if(personal_Id == "maintenance1" && pass == "maintenance1"){
                        Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: Homepage(authLevel: 1, userDepartment: "maintenance",)));
                      }else if(personal_Id == "admin" && pass == "admin"){
                        Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: Homepage(authLevel: 2, userDepartment: "admin",)));
                      }
                      else{
                        Scaffold.of(context).showSnackBar(
                            SnackBar(
                                content: Row(
                                  children: <Widget>[
                                    Icon(Icons.warning),
                                    SizedBox(width: 10,),
                                    Text('Invalid Username / Password.'),
                                  ],
                                )
                            )
                        );
                      }
                    },
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.grey[200],
                        prefixIcon: Icon(
                          Icons.enhanced_encryption,
                          color: primaryblue,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4.0),
                          borderSide: BorderSide(color: Colors.grey[300]),
                        ),
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              _showPassword = !_showPassword;
                            });
                          },
                          child: Icon(
                            _showPassword
                                ? Icons.visibility
                                : Icons.visibility_off,
                          ),
                        ),
                        hintText: 'Password',
                        hintStyle: TextStyle(color: Colors.grey)),
                    obscureText: !_showPassword,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Builder(
                  builder: (context) => SizedBox(
                    width: double.infinity,
                    height: 45,
                    child: FlatButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4.0),
                          side: BorderSide(color: primaryblue,width: 1.5)
                      ),
                      color: primaryblue,
                      textColor: Colors.white ,
                      splashColor: Colors.blueAccent,
                      child: Text(
                          'Sign In',
                        style: TextStyle(
                          fontSize: 16
                        ),
                      ),
                      onPressed: (){
                        setState(() {
                          if(personal_Id == "production0" && pass == "production0"){
                            Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: Homepage(authLevel: 0, userDepartment: "production",)));
                          }else if(personal_Id == "production1" && pass == "production1"){
                            Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: Homepage(authLevel: 1, userDepartment: "production",)));
                          }else if(personal_Id == "maintenance0" && pass == "maintenance0"){
                            Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: Homepage(authLevel: 0, userDepartment: "maintenance",)));
                          }else if(personal_Id == "maintenance1" && pass == "maintenance1"){
                            Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: Homepage(authLevel: 1, userDepartment: "maintenance",)));
                          }else if(personal_Id == "admin" && pass == "admin"){
                            Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: Homepage(authLevel: 2, userDepartment: "admin",)));
                          }
                          else{
                            Scaffold.of(context).showSnackBar(
                              SnackBar(
                                  content: Row(
                                    children: <Widget>[
                                      Icon(Icons.warning),
                                      SizedBox(width: 10,),
                                      Text('Invalid Username / Password.'),
                                    ],
                                  )
                              )
                            );
                          }
                        });
                      },
                    )
                  ),
                ),
                Divider(
                  height: 35,
                  color: primaryblue,
                  thickness: 1.2,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 45,
                  child: FlatButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4.0),
                        side: BorderSide(color: primaryblue,width: 1.5)
                    ),
                    color: Colors.white,
                    textColor: primaryblue ,
                    splashColor: Colors.blueAccent,
                    child: Text(
                      "Forget Password",
                      style: TextStyle(fontSize: 18.0,),
                    ),
                    onPressed: (){
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
