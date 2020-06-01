import 'package:flutter/material.dart';

class CustomInputField extends StatefulWidget {

  final String hintText;
  final bool passField;
  final Icon prefixIconVal;

  const CustomInputField({
    Key key,
    @required this.hintText,
    @required this.passField,
    this.prefixIconVal,
  }) : super(key: key);

  @override
  _CustomInputFieldState createState() => _CustomInputFieldState();
}

class _CustomInputFieldState extends State<CustomInputField> {
  bool _showPassword = false;
  String inputText = "";
  // ignore: unused_field

  String getInputValue(){
    return inputText;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: double.infinity,
      child: TextField(
        onChanged: (String text){
          inputText = text;
        },
        onSubmitted: (String text){
          inputText = text;
        },
        decoration: InputDecoration(
            filled: true,
            fillColor: Colors.grey[200],
            prefixIcon: widget.prefixIconVal,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(4.0),
              borderSide: BorderSide(color: Colors.grey[300]),
            ),
            suffixIcon: widget.passField == true ? GestureDetector(
              onTap: (){
                setState(() {
                  _showPassword = !_showPassword;
                });
              },
              child: Icon(
                _showPassword ? Icons.visibility : Icons.visibility_off,
              ),
            ) : null,
            hintText: widget.hintText,
            hintStyle: TextStyle(
                color: Colors.grey)
        ),
        obscureText: widget.passField == true ? !_showPassword : false,
      ),
    );
  }
}
