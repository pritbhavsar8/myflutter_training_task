import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:myflutter_training_task/Module8/Auth/HomeScreen.dart';
import 'package:myflutter_training_task/Module8/Auth/SignIn.dart';

class splash extends StatefulWidget {
  const splash({super.key});

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  isLogin()
  {
    FirebaseAuth auth = FirebaseAuth.instance;
    final user = auth.currentUser;
    if(user != null)
    {
      Timer(Duration(seconds: 3),()
      {
        Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => homescreen(),)
        );
      });

    }
    else{
      Timer(Duration(seconds: 3),()
      {
        Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => SignIn(),)
        );
      });
    }
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    isLogin();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("Firebase Auth"),
    );
  }
}
