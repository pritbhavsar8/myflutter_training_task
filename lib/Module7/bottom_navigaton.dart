import 'package:flutter/material.dart';
import 'package:myflutter_training_task/Module7/HomeScreen.dart';
import 'package:myflutter_training_task/Module7/SettingScreen.dart';
import 'package:myflutter_training_task/Module7/profile.dart';

class BottomNavigation extends StatefulWidget {
  

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int index = 0;
  List<Widget> screen = [
    home(),
    setting(),
    profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        // type: BottomNavigationBarType.fixed,
        currentIndex: index,
        onTap: (value) {
          setState(() {
            index= value;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "home"),
          BottomNavigationBarItem(icon: Icon(Icons.settings),label: "setting"),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle_rounded),label: "profile"),

        ],
        backgroundColor: Colors.grey.shade100,
        selectedItemColor: Colors.amber,
        unselectedItemColor: Colors.red.shade400,

      ),
      body: (index==0)?screen[0]:(index==1)?screen[1]:screen[2]
    );
  }
}