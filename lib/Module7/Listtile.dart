import 'package:flutter/material.dart';

class Listtile extends StatefulWidget {
  const Listtile({super.key});

  @override
  State<Listtile> createState() => _ListtileState();
}

class _ListtileState extends State<Listtile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 4,
        itemBuilder:(context, index) {
          return ListTile(
            leading: Icon(Icons.star),
            trailing: Icon(Icons.arrow_forward),
            dense: true,
            onTap: () 
            {
              print(index);
            },
          );
        }, 
       
      ),
    );
  }
}