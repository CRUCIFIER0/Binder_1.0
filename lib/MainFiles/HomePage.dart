import 'package:flutter/material.dart';
import 'package:tmapp/MainFiles/departmentComplaints/deptComplaintsMain.dart';
import 'package:tmapp/MainFiles/myComplaints/myComplaintMain.dart';
import 'package:tmapp/MainFiles/myProfile/profileMain.dart';
import 'package:tmapp/MainFiles/statistics/statisticsMain.dart';
import 'package:tmapp/ReusableWidgets/CustomBottomNavigationBar.dart';
import 'package:tmapp/ReusableWidgets/themes.dart';

class Homepage extends StatefulWidget {

  final int authLevel;
  final String userDepartment;

  const Homepage({
    Key key,
    @required this.authLevel,
    @required this.userDepartment
  }) : super(key: key);


  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  // widget.authLevel == 0 && widget.userDepartment == "maintenance" <=> Maintenance operator
  List<Widget> _maintenanceOperatorScreenList() => [
    myComplaints(userDepartment: widget.userDepartment, authLevel: widget.authLevel,),
    profile(),
  ];

  //widget.authLevel == 1  && widget.userDepartment  == "maintenance" <=> Maintenance Supervisor
  List<Widget> _maintenanceSupervisorScreenList() => [
    maintenanceDeptComplaints(),
    statistics(),
    profile(),
  ];

  // widget.authLevel == 0 && widget.userDepartment == "production" <=> Production operator
  List<Widget> _productionOperatorScreenList() => [
    myComplaints(userDepartment: widget.userDepartment, authLevel: widget.authLevel,),
    profile(),
  ];

  //widget.authLevel == 1 && widget.userDepartment = "production" <=> Production Supervisor
  List<Widget> _productionSupervisorScreenList() => [
    myComplaints(userDepartment: widget.userDepartment, authLevel: widget.authLevel,),
    productionDeptComplaints(),
    statistics(),
    profile(),
  ];

  //widget.authLevel == 2 && userDepartment == "admin" <=> System Admin
  List<Widget> _systemAdminScreenList() => [];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {

    final List<Widget> productionOperatorScreenList = _productionOperatorScreenList();
    final List<Widget> maintenanceOperatorScreenList = _maintenanceOperatorScreenList();
    final List<Widget> productionSupervisorScreenList = _productionSupervisorScreenList();
    final List<Widget> maintenanceSupervisorScreenList = _maintenanceSupervisorScreenList();
    final List<Widget> systemAdminScreenList = _systemAdminScreenList();

    return Scaffold(
      body: (widget.authLevel == 0 && widget.userDepartment == "maintenance") ? maintenanceOperatorScreenList[currentIndex] :
      (widget.authLevel == 0 && widget.userDepartment == "production") ? productionOperatorScreenList[currentIndex] :
      (widget.authLevel == 1  && widget.userDepartment  == "maintenance") ? maintenanceSupervisorScreenList[currentIndex] :
      (widget.authLevel == 1 && widget.userDepartment == "production") ? productionSupervisorScreenList[currentIndex] :
      (widget.authLevel == 2 && widget.userDepartment == "admin") ? systemAdminScreenList[currentIndex] : null,
      bottomNavigationBar: (widget.authLevel == 0 && widget.userDepartment == "maintenance") == true ? BottomNavyBar(
        selectedIndex: currentIndex,
        showElevation: true,
        itemCornerRadius: 10,
        curve: Curves.easeInBack,
        onItemSelected: (index) => setState(() {
          currentIndex = index;
        }),
        items: [
          BottomNavyBarItem(
            icon: Icon(Icons.message),
            title: Text('Complaints'),
            activeColor: primaryblue,
            inactiveColor: Colors.white,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.account_circle),
            title: Text('Profile'),
            activeColor: primaryblue,
            inactiveColor: Colors.white,
            textAlign: TextAlign.center,
          ),
        ],
      ) :
      (widget.authLevel == 1 && widget.userDepartment == "maintenance") == true ? BottomNavyBar(
        selectedIndex: currentIndex,
        showElevation: true,
        itemCornerRadius: 10,
        curve: Curves.easeInBack,
        onItemSelected: (index) =>
            setState(() {
              currentIndex = index;
            }),
        items: [
          BottomNavyBarItem(
            icon: Icon(Icons.account_balance),
            title: Text('Department'),
            activeColor: primaryblue,
            inactiveColor: Colors.white,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.assessment),
            title: Text('Statistics'),
            activeColor: primaryblue,
            inactiveColor: Colors.white,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.account_circle),
            title: Text('Profile'),
            activeColor: primaryblue,
            inactiveColor: Colors.white,
            textAlign: TextAlign.center,
          ),
        ],
      ) :
      (widget.authLevel == 0 && widget.userDepartment == "production") == true ? BottomNavyBar(
        selectedIndex: currentIndex,
        showElevation: true,
        itemCornerRadius: 10,
        curve: Curves.easeInBack,
        onItemSelected: (index) => setState(() {
          currentIndex = index;
        }),
        items: [
          BottomNavyBarItem(
            icon: Icon(Icons.message),
            title: Text('Complaints'),
            activeColor: primaryblue,
            inactiveColor: Colors.white,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.account_circle),
            title: Text('Profile'),
            activeColor: primaryblue,
            inactiveColor: Colors.white,
            textAlign: TextAlign.center,
          ),
        ],
      ) :
      (widget.authLevel == 1 && widget.userDepartment == "production") == true ? BottomNavyBar(
        selectedIndex: currentIndex,
        showElevation: true,
        itemCornerRadius: 10,
        curve: Curves.easeInBack,
        onItemSelected: (index) => setState(() {
          currentIndex = index;
        }),
        items: [
          BottomNavyBarItem(
            icon: Icon(Icons.message),
            title: Text('Complaints'),
            activeColor: primaryblue,
            inactiveColor: Colors.white,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.account_balance),
            title: Text('Department'),
            activeColor: primaryblue,
            inactiveColor: Colors.white,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.assessment),
            title: Text('Statistics'),
            activeColor: primaryblue,
            inactiveColor: Colors.white,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.account_circle),
            title: Text('Profile'),
            activeColor: primaryblue,
            inactiveColor: Colors.white,
            textAlign: TextAlign.center,
          ),
        ],
      ) :
      (widget.authLevel == 2 && widget.userDepartment == "admin") == true ? BottomNavyBar(
        selectedIndex: currentIndex,
        showElevation: true,
        itemCornerRadius: 10,
        curve: Curves.easeInBack,
        onItemSelected: (index) =>
            setState(() {
              currentIndex = index;
            }),
        items: [
          BottomNavyBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
            activeColor: primaryblue,
            inactiveColor: Colors.white,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.account_circle),
            title: Text('Profile'),
            activeColor: primaryblue,
            inactiveColor: Colors.white,
            textAlign: TextAlign.center,
          ),
        ],
      ) : null,
    );
  }
}
