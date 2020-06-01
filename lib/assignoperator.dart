import 'package:autocomplete_textfield/autocomplete_textfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AssignOperator extends StatefulWidget {
  @override
  _ComaplintDetailsState createState() => _ComaplintDetailsState();
}

class _ComaplintDetailsState extends State<AssignOperator> {
  GlobalKey<AutoCompleteTextFieldState<String>> key = new GlobalKey();
  List<String> suggestions = [
    "Bhusnur Dattatray Prakash",
    "Jagdale Rajan Yadav",
    "Sargar Ramchandra Sopan",
    "Kachare Bharat Sampati",
    "Dixit Sharad Rajaram",
    "Awale Vishwanth Bhairu",
    "Gokule Suresh Devram",
    "Kandelkar Narayan Tukaram",
    "Kawade Chandrakant Ekanath",
    "Shinde Ajit Dashrath",
    "Jamdade Ravindra Anantrao",
    "Shendkar Vijay Mhaskoo",
    "Malusare Atmaram Krishna",
    "Lanke Kiran S.",
    "Kotasthane Kedar k.",
    "Mathkar Mahesh M."
  ];
  AutoCompleteTextField searchTextField;
  bool loading = true;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: Scaffold(
        backgroundColor: Color(0xFF1467B3),
        appBar: AppBar(
          leading: new IconButton(
            icon: new Icon(Icons.arrow_back_ios),
            onPressed: () {
//                Navigator.push(
//                  context,
//                  MaterialPageRoute(builder: (context) => First()),
//                );
            },
          ),
          title: Text("Logo",
              style: TextStyle(
                  fontFamily: 'Roboto', color: Colors.white, fontSize: 30)),
          centerTitle: true,
          backgroundColor: Color(0xFF1467B3),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(height: 20,),
              Card(
                margin: EdgeInsets.only(top: 10, left: 20, right: 20),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                //alignment: Alignment.center,
                child: Stack(children: <Widget>[
                  Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.all(20.0),
                    child: Text("Complaint No.",
                        style: TextStyle(
                            fontFamily: 'Roboto',
                            color: Color(0xFF1467B3),
                            fontSize: 18,
                            fontWeight: FontWeight.w500)),
                  ),
                  Container(
                      alignment: Alignment.topRight,
                      margin: EdgeInsets.only(top: 20, right: 20),
                      child: Icon(
                        Icons.brightness_1,
                        color: Color(0xFFFF5656),
                      )),
                  Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.only(left: 21, top: 50),
                    child: Text("Machine No.",
                        style: TextStyle(
                            fontFamily: 'Roboto',
                            color: Color(0xFF1467B3),
                            fontSize: 14)),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 75, left: 23),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(height: 8),
                        Text(
                          "Personal No. :",
                          style: TextStyle(
                              fontFamily: 'Roboto',
                              color: Color.fromRGBO(0, 0, 0, 0.5),
                              fontSize: 14),
                          textAlign: TextAlign.left,
                        ),
                        SizedBox(height: 8),
                        Text(
                          "Line No. :",
                          style: TextStyle(
                              fontFamily: 'Roboto',
                              color: Color.fromRGBO(0, 0, 0, 0.5),
                              fontSize: 14),
                          textAlign: TextAlign.left,
                        ),
                        SizedBox(height: 8),
                        Text(
                          "Machine No. :",
                          style: TextStyle(
                              fontFamily: 'Roboto',
                              color: Color.fromRGBO(0, 0, 0, 0.5),
                              fontSize: 14),
                          textAlign: TextAlign.left,
                        ),
                        SizedBox(height: 8),
                        Text(
                          "Issue :",
                          style: TextStyle(
                              fontFamily: 'Roboto',
                              color: Color.fromRGBO(0, 0, 0, 0.5),
                              fontSize: 14),
                          textAlign: TextAlign.left,
                        ),
                        SizedBox(height: 8),
                        Text(
                          "Status:",
                          style: TextStyle(
                              fontFamily: 'Roboto',
                              color: Color.fromRGBO(0, 0, 0, 0.5),
                              fontSize: 14),
                          textAlign: TextAlign.left,
                        ),
                        SizedBox(height: 8),
                        Text(
                          "Raised by :",
                          style: TextStyle(
                              fontFamily: 'Roboto',
                              color: Color.fromRGBO(0, 0, 0, 0.5),
                              fontSize: 14),
                          textAlign: TextAlign.left,
                        ),
                        SizedBox(height: 8),
                        Text(
                          "Time :",
                          style: TextStyle(
                              fontFamily: 'Roboto',
                              color: Color.fromRGBO(0, 0, 0, 0.5),
                              fontSize: 14),
                          textAlign: TextAlign.left,
                        ),
                        SizedBox(height: 8),
                        Text(
                          "Assigned to :",
                          style: TextStyle(
                              fontFamily: 'Roboto',
                              color: Color.fromRGBO(0, 0, 0, 0.5),
                              fontSize: 14),
                          textAlign: TextAlign.left,
                        ),
                        SizedBox(height: 8),
                        Text(
                          "Assigned by :",
                          style: TextStyle(
                              fontFamily: 'Roboto',
                              color: Color.fromRGBO(0, 0, 0, 0.5),
                              fontSize: 14),
                          textAlign: TextAlign.left,
                        ),
                        SizedBox(height: 8),
                        Text(
                          "Description :",
                          style: TextStyle(
                              fontFamily: 'Roboto',
                              color: Color.fromRGBO(0, 0, 0, 0.5),
                              fontSize: 14),
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 340, left: 20, bottom: 20),
                    child: Text("Date ",
                        style: TextStyle(
                            fontFamily: 'Roboto',
                            color: Color(0x801467b3),
                            fontSize: 14,
                            fontWeight: FontWeight.w500)),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 340, right: 20, bottom: 20),
                    alignment: Alignment.topRight,
                    child: Text("Department ",
                        style: TextStyle(
                            fontFamily: 'Roboto',
                            color: Color(0x801467b3),
                            fontSize: 14,
                            fontWeight: FontWeight.w500)),
                  ),
                ]),
              ),
              Card(
                margin: EdgeInsets.only(left: 20, right: 20, top: 10),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                child: Column(
                  children: <Widget>[
                    Container(
                      alignment: Alignment.topLeft,
                      padding: EdgeInsets.only(top: 20, left: 20),
                      child: Text("Assign Operator",
                          style: TextStyle(
                              fontFamily: 'Roboto',
                              color: Color(0xFF1467B3),
                              fontSize: 18,
                              fontWeight: FontWeight.w500)),
                    ),
                    SizedBox(height: 20,),

                    Container(
                      height: 50,
                      padding: EdgeInsets.only(left: 20,right: 20),
                      child: AutoCompleteTextField<String>(
                        key: key,
                        clearOnSubmit: false,
                        suggestions: suggestions,
                        style: TextStyle(color: Colors.blue,fontSize: 14),
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.blue)
                            ),
                            contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 20),
                            hintText: "Search",
                            hintStyle: TextStyle(color: Colors.blue,fontSize: 18)
                        ),
                        itemFilter: (item,query){
                          return item.toLowerCase().startsWith(query.toLowerCase());
                        },
                        itemSorter: (a,b){
                          return a.compareTo(b);
                        },
                        itemSubmitted: (item){
                          setState(() {
                            searchTextField.textField.controller.text = item;
                          });

                        },
                        itemBuilder: (context,item){
                          return Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                item,style: TextStyle(fontSize: 18,color: Colors.black,fontFamily: "Roboto"),
                              ),
                            ],
                          );

                        },
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      //padding:EdgeInsets.only(top: 400,left:20,right: 20) ,
                      child: new SizedBox(
                        //width: double.infinity,
                        child: new RaisedButton(
                          child: new Text(
                            "Assign",
                            style: TextStyle(
                                fontFamily: 'Roboto',
                                color: Colors.white,
                                fontSize: 16),
                            textAlign: TextAlign.center,
                          ),
                          color: Color(0xFF1467B3),
                          onPressed: () {
                            /** */
                          },
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}