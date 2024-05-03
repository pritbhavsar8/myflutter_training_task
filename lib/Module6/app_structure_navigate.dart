import 'package:flutter/material.dart';
import 'package:myflutter_training_task/Module6/SettingScreen.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatefulWidget {
 
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HomeScreen"),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(onPressed: (){
          // context.go('/setting');
          Navigator.pushNamed(context, "/second");
          // Navigator.of(context).push(
          //   MaterialPageRoute(builder: (context) =>SettingScreeen() ,)
          // );
        }, child: Text("go to setting screen")),
      ),
    );
  }
}