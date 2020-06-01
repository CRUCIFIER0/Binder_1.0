import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import '../ReusableWidgets/themes.dart';

class changePassword extends StatefulWidget {
  @override
  _changePasswordState createState() => _changePasswordState();
}

class _changePasswordState extends State<changePassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryblue,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 60),
                height: 150,width: 150,
                  child: Image.asset('assets/images/forgotPassword.png',fit: BoxFit.fill,)
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40,bottom: 20),
                child: Center(
                  child: Text(
                    'Reset Your Password ?',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30,),
                child: Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            color: primaryblue.withOpacity(0.5),
                            blurRadius: 20.0,
                            offset: Offset(0, 10))
                      ]),
                  child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Enter new PassWord",
                        hintStyle:
                        TextStyle(color: Colors.grey[400])),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            color: primaryblue.withOpacity(0.5),
                            blurRadius: 20.0,
                            offset: Offset(0, 10))
                      ]),
                  child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Confirm new PassWord",
                        hintStyle:
                        TextStyle(color: Colors.grey[400])),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(8))
                  ),
                  child: FlatButton.icon(
                      onPressed: (){
                        setState(() {
                          Navigator.push(context, PageTransition(type: PageTransitionType.leftToRightWithFade, child: null));
                        });
                      },
                      icon: Icon(Icons.forward),
                      label: Text('Proceed to login Page'),
                  )
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
