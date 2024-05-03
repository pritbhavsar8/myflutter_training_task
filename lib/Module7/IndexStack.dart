import 'package:flutter/material.dart';
import 'package:myflutter_training_task/Module7/HomeScreen.dart';
import 'package:myflutter_training_task/Module7/SettingScreen.dart';

class indexstack extends StatefulWidget {
  

  @override
  State<indexstack> createState() => _indexstackState();
}

class _indexstackState extends State<indexstack> {
  int selected = 0;
  List<Widget> screens = [
    home(),
    setting(),
  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.settings),label: "Setting")
        ],
        currentIndex: selected,
        onTap: (value) {
          setState(() {
            selected = value;
          });
        },
      ),
      body: IndexedStack(
        index: selected,
        children: screens,
      ),
    );
  }
}