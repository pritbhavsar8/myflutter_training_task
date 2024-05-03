import 'package:flutter/material.dart';
import 'package:myflutter_training_task/Module6/app_structure_navigate.dart';
import 'package:go_router/go_router.dart';

class SettingScreeen extends StatefulWidget {
 
  @override
  State<SettingScreeen> createState() => _SettingScreeenState();
}

class _SettingScreeenState extends State<SettingScreeen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Setting Screeen"),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(onPressed: (){
          //  context.go('/home');
          Navigator.of(context).pop();
          // Navigator.pop(context);
          
        }, child: Text("back")),
      ),
    );
  }
}