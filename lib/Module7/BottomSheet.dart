import 'package:flutter/material.dart';

class bottomSheet extends StatefulWidget {
  const bottomSheet({super.key});

  @override
  State<bottomSheet> createState() => _bottomSheetState();
}

class _bottomSheetState extends State<bottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showModalBottomSheet(
              backgroundColor: Colors.amber,
              context: context, 
              builder: (BuildContext context) {
                return SingleChildScrollView(
                  child: Container(
                    height: 400, // Set the height as needed
                    color: Colors.white,
                    child: Center(
                      child: Text(
                        'This is a model bottom sheet',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                );
                // return Center(
                //   child: ElevatedButton(
                //     onPressed: () {
                //       Navigator.of(context).pop();
                //     },
                //     child: Text("close"),
                //   ),
                // );
              },
            );
          },
          child:Text("show bottom sheet"),
        ),
      ),
    );
  }
}