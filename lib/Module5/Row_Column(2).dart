import 'package:flutter/material.dart';

class ColumnWidget extends StatefulWidget {
  

  @override
  State<ColumnWidget> createState() => _ColumnWidgetState();
}

class _ColumnWidgetState extends State<ColumnWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Login"),
          SizedBox(height: 30.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(          
                padding: EdgeInsets.all(10.0),
                color: Colors.green,
                child: ElevatedButton(
                  onPressed: (){},
                   child: Text("Login")
                ),
              ),
              Container(
                padding: EdgeInsets.all(10.0),
                color: Colors.red,
                child: ElevatedButton(
                  onPressed: (){},
                   child: Text("Cancel")
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}