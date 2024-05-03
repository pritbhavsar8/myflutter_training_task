import 'package:flutter/material.dart';

class Listview extends StatefulWidget {
  

  @override
  State<Listview> createState() => _ListviewState();
}

class _ListviewState extends State<Listview> {
  List<String> fruits= ["Mango","apple","Watermalon","banana","graps"];
  // List<Widget> imagelist = [
  //   Image.asset("assets/img/IMG_20191103_120414~2.jpg"),
  //   Image.asset("assets/img/india map.png"),
  //   Image.asset("assets/img/IMG_20220206_100102.jpg"),
  // ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: fruits.length,
        itemBuilder: (context, index) {
          return Container(
            color: Colors.amber.shade50,
            padding: EdgeInsets.all(8.0),
            margin: EdgeInsets.all(10.0),
            child: Text(fruits[index].toString(),style: TextStyle(
              fontWeight: FontWeight.w300
            ),),
          );
          // return ListTile(
          //   leading: Image.asset(imagelist[index].toString()) ,
          // );
          
        },
      ),
    );
  }
}