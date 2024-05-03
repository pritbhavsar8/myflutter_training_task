import 'package:flutter/material.dart';

class Basic_Scaffold extends StatefulWidget
{
  const Basic_Scaffold({super.key});

  @override
  State<Basic_Scaffold> createState() => _Basic_ScaffoldState();
}

class _Basic_ScaffoldState extends State<Basic_Scaffold>
{
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      appBar: AppBar(
        leading: Row(
          children: [
            Icon(Icons.arrow_back_outlined),
            Icon(Icons.menu),
          ],
        ),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.search_rounded))
        ],
        centerTitle: true,
        title: Text("Hello, World!"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          print("click");
        },
        child: Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "home"),
          BottomNavigationBarItem(icon: Icon(Icons.settings),label: "setting"),
        ],
        currentIndex:index,
        onTap: (value) {
          setState(() {
            index = value;
          });
        },
      ),
      body: Center(
          child: Text("This is my first Flutter app")
      ),
    );
  }
}

