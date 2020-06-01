import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:page_transition/page_transition.dart';

import '../ReusableWidgets/themes.dart';

class OTPRequest extends StatefulWidget {
  @override
  _OTPRequestState createState() => _OTPRequestState();
}

class _OTPRequestState extends State<OTPRequest>
    with SingleTickerProviderStateMixin {
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              Container(
                  padding: EdgeInsets.only(bottom: 15),
                  height: MediaQuery.of(context).size.height * 3 / 7,
                  decoration: BoxDecoration(
                      color: primaryblue,
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(30),
                          bottomLeft: Radius.circular(30))),
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        top: 25,
                        child: IconButton(
                          icon: Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          ),
                          iconSize: 25,
                        ),
                      ),
                      Center(
                        child: Container(
                          height: 150,
                          width: 150,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image:
                                    AssetImage('assets/images/mobileicon.png')),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          'OTP Verification',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Roboto',
                              fontSize: 28,
                              fontWeight: FontWeight.w600),
                        ),
                      )
                    ],
                  )),
              Padding(
                padding: EdgeInsets.only(top: 20, left: 20, right: 20),
                child: OTPVerification(),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget OTPVerification() {
    return Container(
      child: Column(
        children: <Widget>[
          Text(
            'Enter the OTP sent to your Mobile.',
            style: TextStyle(
              color: primaryblue,
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 60, left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: 50.0,
                  width: 60.0,
                  child: TextFormField(
                    obscureText: true,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                    maxLengthEnforced: true,
                    maxLength: 1,
                    showCursor: false,
                    keyboardType: TextInputType.numberWithOptions(),
                  ),
                ),
                Spacer(),
                Container(
                  height: 50.0,
                  width: 60.0,
                  child: TextFormField(
                    obscureText: true,
                  ),
                ),
                Spacer(),
                Container(
                  height: 50.0,
                  width: 60.0,
                  child: TextFormField(
                    obscureText: true,
                  ),
                ),
                Spacer(),
                Container(
                  height: 50.0,
                  width: 60.0,
                  child: TextFormField(
                    obscureText: true,
//                                decoration: InputDecoration(
//                                  filled: true,
//                                  fillColor: Color.fromRGBO(20, 103, 179, 0.1),
//                                ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25, bottom: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Dont recieve the OTP? ',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                  ),
                ),
                InkWell(
                  onTap: () {
                    // resend function \\
                  },
                  child: Text(
                    'RESEND OTP',
                    style: TextStyle(
                      color: Colors.deepOrange,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: primaryblue,
            ),
            child: InkWell(
              onTap: () {},
              child: Center(
                child: Text(
                  "Reset Now",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
