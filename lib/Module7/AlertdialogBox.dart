import 'package:flutter/material.dart';
import 'package:myflutter_training_task/Module7/HomeScreen.dart';

class Alertdialog extends StatefulWidget {
  const Alertdialog({super.key});

  @override
  State<Alertdialog> createState() => _AlertdialogState();
}

class _AlertdialogState extends State<Alertdialog> {
  @override
  TextEditingController _name = TextEditingController();
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () {
                AlertDialog dialog = AlertDialog(
                 title: Text("Are you Sure"),
                 content: SizedBox(
                  width: 200.0,
                   child: TextField(
                    controller: _name,
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11.0)
                      ),
                    ),
                   ),
                 ),
                  // content: Row(
                  //   children: [
                  //     Icon(Icons.error,color: Colors.red,),
                  //     Text("Warning",style: TextStyle(fontSize: 15.0),)
                  //   ],
                  // ),
                  ////Text("Are you sure?"),
                  backgroundColor: Colors.red.shade100,
                  actions: [
                    TextButton(onPressed: (){
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => home(),)
                      );
                    }, child: Text("Yes")),
                    // TextButton(onPressed: (){
                    //   Navigator.of(context).pop();
                    // }, child: Text("No")),
                  ],
                );
                 showDialog(context: context, builder: (context){
                  return dialog;
                });
              },
              child: Text("dialog box"),
            ) 
          ),
          ElevatedButton(onPressed: (){
            var name = _name.text.toString();
            if (name==null) {

              print("please Enter your name");
            }
          }, child: Text("Submit"))
        ],
      ),
    );
  }
}