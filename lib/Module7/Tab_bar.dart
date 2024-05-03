import 'package:flutter/material.dart';
import 'package:myflutter_training_task/Module7/HomeScreen.dart';
import 'package:myflutter_training_task/Module7/SettingScreen.dart';
import 'package:myflutter_training_task/Module7/profile.dart';

class tabBar extends StatefulWidget {
  

  @override
  State<tabBar> createState() => _tabBarState();
}

class _tabBarState extends State<tabBar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs:[
              Tab(icon: Icon(Icons.home), text: 'Home'),
              Tab(icon: Icon(Icons.person), text: 'Profile'),
              Tab(icon: Icon(Icons.settings), text: 'setting'),
            ],
            onTap: (value) {
               print("Tab selected: $value");
            },
            isScrollable: true,
            indicatorColor: Colors.blue,
            labelColor: Colors.brown,
            unselectedLabelColor: Colors.red,
            labelStyle: TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.w400,           
            ),
            unselectedLabelStyle:TextStyle(
              fontSize: 12.0,
              fontWeight: FontWeight.w300,           
            ), 
          ),
        ),
        body: TabBarView(
          children: [
            home(),
            profile(),
            setting(),
          ],
        ),
      ),
      
    );
  }
}