import 'package:cmdi_student_handbook/screens/home_screen.dart';
import 'package:cmdi_student_handbook/screens/policies_screen.dart';
import 'package:cmdi_student_handbook/screens/student_affairs_and_services_screen.dart';
import 'package:cmdi_student_handbook/screens/rules_screen.dart';
import 'package:flutter/material.dart';

class CustomBottomNavBar extends StatefulWidget {
  const CustomBottomNavBar({Key? key}) : super(key: key);

  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOption = <Widget>[
    HomeScreen(),
    PoliciesScreen(),
    StudentAffairsScreen(),
    RulesScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOption.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Home',
            // backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.policy),
            label: 'Policies',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'Student Affairs',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.rule_sharp),
            label: 'Rules',
          ),
        ],
        currentIndex: _selectedIndex,
        showUnselectedLabels: false,
        selectedItemColor: Colors.white,
        selectedIconTheme: const IconThemeData(color: Colors.white),
        unselectedItemColor: Colors.white,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.green,
      ),
    );
  }
}
