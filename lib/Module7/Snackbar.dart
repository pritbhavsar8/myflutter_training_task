import 'package:flutter/material.dart';

class Snackbar extends StatefulWidget {
  const Snackbar({super.key});

  @override
  State<Snackbar> createState() => _SnackbarState();
}

class _SnackbarState extends State<Snackbar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            SnackBar s = SnackBar(
              content: Text("Most Welcome"),
              duration: Duration(seconds: 2),
              backgroundColor: Colors.green,
              closeIconColor: Colors.white,
              action: SnackBarAction(label: "dismiss", onPressed: (){
                Navigator.of(context).pop();
              }),
            );
            ScaffoldMessenger.of(context).showSnackBar(s);
          },
          child: Text("Show Snackbar"),
        ),
      ),
    );
  }
}