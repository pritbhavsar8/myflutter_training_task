import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:myflutter_training_task/Module8/Auth/SignIn.dart';
import 'package:shared_preferences/shared_preferences.dart';

class homescreen extends StatefulWidget {
  const homescreen({super.key});

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  var useremail ="";
  var userId = "";
  var userPhone= "";
  FirebaseAuth auth = FirebaseAuth.instance;
  getdata() async
  {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    setState(() {
      useremail =  preferences.getString("email").toString();
      userId = preferences.getString("id").toString();
      userPhone = preferences.getString("phoneNo").toString();
    });
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getdata();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        actions: [
          IconButton(onPressed: (){
            auth.signOut().then((value){
               Navigator.of(context).push(
               MaterialPageRoute(builder: (context) => SignIn(),)
            );
            }).onError((error, stackTrace) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(error.toString()),
                  backgroundColor: Colors.red,
                  duration: Duration(seconds: 3),
  
                )
              );
            });
          }, icon: Icon(Icons.logout))
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: [
            Text("Email: $useremail"),
            Text("ID: $userId"),
            Text(userPhone)
          ],
        ),
      ),
    );
  }
}