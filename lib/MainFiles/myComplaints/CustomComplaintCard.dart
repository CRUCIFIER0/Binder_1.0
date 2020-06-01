import 'package:flutter/material.dart';
import 'package:tmapp/MainFiles/myComplaints/ExpandedComplaintCard.dart';
import 'package:tmapp/ReusableWidgets/themes.dart';

class CustomComplaintCard extends StatefulWidget {

  final int complaintNo;
  final String userDepartment;

  const CustomComplaintCard({
    Key key,
    @required this.complaintNo,
    @required this.userDepartment
  }) : super(key: key);

  @override
  _CustomComplaintCardState createState() => _CustomComplaintCardState();
}

class _CustomComplaintCardState extends State<CustomComplaintCard> {
  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'Complaint-' + widget.complaintNo.toString(),
      child: Material(
        child: InkWell(
          onTap: (){
            setState(() {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ExpandedComplaintAssign(complaintNo: widget.complaintNo,)),
              );
            });
          },
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(8.0)),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(0.0, 2.0),
                  )
                ]
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(top: 5,left: 5),
                          child: Text(
                              "Title of complaint ",
                              style: TextStyle(
                                  fontFamily: 'Roboto',
                                  color: primaryblue,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                              ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 5,left: 5),
                          child: Text(
                              "Machine No. ",
                              style: TextStyle(
                                  fontFamily: 'Roboto',
                                  color: primaryblue,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500)
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Container(
                      margin: EdgeInsets.only(top: 5,right: 5),
                        child: Icon(Icons.brightness_1,color: Color(0xFFFF5656),)
                    ),
                  ],
                ),
                SizedBox(height: 15,),
                Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(left: 5),
                      child: Text(
                          "Date ",
                          style: TextStyle(
                              fontFamily: 'Roboto',
                              color: primaryblue,
                              fontSize: 14,
                              fontWeight: FontWeight.w500)),
                    ),
                    Spacer(),
                    Container(
                      margin: EdgeInsets.only(left: 5),
                      child: Text(
                          "Department",
                          style: TextStyle(
                              fontFamily: 'Roboto',
                              color: primaryblue,
                              fontSize: 14,
                              fontWeight: FontWeight.w500)),
                    ),
                  ],
                ),
                SizedBox(height: 5,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
