import 'package:flutter/material.dart';

class NestedContainer extends StatefulWidget {

  @override
  State<NestedContainer> createState() => _NestedContainerState();
}

class _NestedContainerState extends State<NestedContainer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Center(
        child:Container(
          width: 200.0,
          height: 100.0,
          alignment: Alignment.center,
          padding: EdgeInsets.all(20.0),
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(10.0),
            border: Border.all(
              color: Colors.black,
              width: 2.0
            )
          ),
          child: Container(
            width: 100.0,
            height: 100.0,
            alignment: Alignment.center,
            // padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
            color: Colors.yellow,
            borderRadius: BorderRadius.circular(10.0),
            border: Border.all(
              color: Colors.black,
              width: 2.0
            )
          ),
          child: Text("Nested Text"),
          )
        ) ,
      ),
    );
  }
}