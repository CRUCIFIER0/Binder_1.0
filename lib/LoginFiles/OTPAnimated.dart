import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import '../ReusableWidgets/FadeAnimation.dart';
import '../ReusableWidgets/themes.dart';

class OTPAnimated extends StatefulWidget {
  @override
  _OTPAnimatedState createState() => _OTPAnimatedState();
}

class _OTPAnimatedState extends State<OTPAnimated>
    with TickerProviderStateMixin {
  bool _showButtonChild = false;

  AnimationController _scaleController;
  AnimationController _colorController;

  Animation<double> _scaleAnimation;
  Animation _colorAnimation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _scaleController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 400));

    _scaleAnimation =
        Tween<double>(begin: 1.0, end: 32.0).animate(_scaleController)
          ..addStatusListener((status) {
            if (status == AnimationStatus.completed) {
            }
          });

    _colorController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 800));
    _colorAnimation =
        ColorTween(begin: primaryblue, end: Colors.white).animate(_colorController)
          ..addStatusListener((status) {
            if (status == AnimationStatus.completed) {
              Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: null));
            }
          });
  }

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: double.infinity,
        child: Stack(
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
            Container(
              padding: EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Center(
                    child: Text(
                      'Enter the OTP sent to your Mobile.',
                      style: TextStyle(
                        color: primaryblue,
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 60, left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
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
                  FadeAnimation(
                    delay: 1.6,
                    child: AnimatedBuilder(
                      animation: _scaleController,
                      builder: (context, child) => Transform.scale(
                          scale: _scaleAnimation.value,
                          child: AnimatedBuilder(
                            animation: _colorController,
                            builder: (context,child) => Container(
                              width: MediaQuery.of(context).size.width,
                              height: 50,
                              decoration: BoxDecoration(
                                  color: _colorAnimation.value,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: _showButtonChild == false ? FlatButton(
                                onPressed: () {
                                  _showButtonChild = true;
                                  _scaleController.forward();
                                  _colorController.forward();
                                },
                                child: Text(
                                  "Reset Now",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              ) : Container(),
                            ),
                          )),
                    ),
                  ),
                  SizedBox(
                    height: 60,
                    child: Text('Hello',style: TextStyle(color: primaryblue),),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
