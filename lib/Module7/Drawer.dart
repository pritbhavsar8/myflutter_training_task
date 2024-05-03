
import 'package:flutter/material.dart';
import 'package:myflutter_training_task/Module7/HomeScreen.dart';
import 'package:myflutter_training_task/Module7/SettingScreen.dart';

class drawer extends StatefulWidget {
  
  @override
  State<drawer> createState() => _drawerState();
}

class _drawerState extends State<drawer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My App"),
        centerTitle: true,
      ),
      drawer: Drawer(
        shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
        elevation: 20.0,
        backgroundColor: Colors.grey.shade100,
        child: ListView(
          children: [
             DrawerHeader(
                child: Text('Navigation Menu',style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w700
                ),),
                decoration: BoxDecoration(
                  color: Colors.yellow.shade100,
                  border: Border.all(
                    color: Colors.blue,
                    // style: BorderStyle.none
                  ) // Customize header background
                ),
              ),
              ListTile(
                title: Text("Home"),
                leading: Icon(Icons.home),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder:(context) => home(),)
                  );
                },               
              ),
               ListTile(
                title: Text("Setting"),
                leading: Icon(Icons.settings),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder:(context) => setting(), )
                  );
                },                
              ),
          ],
        ),
      ),
    );
  }
}