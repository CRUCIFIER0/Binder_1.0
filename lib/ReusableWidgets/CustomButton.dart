import 'package:flutter/material.dart';
import 'package:tmapp/ReusableWidgets/themes.dart';

class CustomButton extends StatefulWidget {

  final String text;
  final bool filled;

  const CustomButton({
    Key key,
    @required this.text,
    this.filled,
  }) : super(key: key);


  @override
  _CustomButtonState createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 45,
      child: FlatButton(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4.0),
            side: BorderSide(color: primaryblue,width: 1.5)
        ),
        color: widget.filled == true ? primaryblue : Colors.white,
        textColor: widget.filled == true ? Colors.white : primaryblue ,
        splashColor: Colors.blueAccent,
        child: Text(
          widget.text,
          style: TextStyle(fontSize: 16.0),
        ),
      ),
    );
  }
}
