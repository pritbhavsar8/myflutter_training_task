import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:myflutter_training_task/Module3/Abstract%20Class.dart';

class editTask extends StatefulWidget {
  var updateId = "";
   editTask({required this.updateId});

  @override
  State<editTask> createState() => _editTaskState();
}

class _editTaskState extends State<editTask> {
  TextEditingController _title = TextEditingController();
  TextEditingController _remark = TextEditingController();
  getdata() async {
    DataSnapshot snapshot = await FirebaseDatabase.instance.ref("Notes").child(widget.updateId).get();
    Map document = snapshot.value as Map;
    setState(() {
      _title.text = document["title"];
     _remark.text = document["remark"];
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
        title: Text("Edit Task"),
        centerTitle: true,
      ),
      body:Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 300.0,
                child: TextField(
                  controller: _title,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11.0)
                    ),
                    filled: true,
                    fillColor: Colors.red.shade50,
                    hintText: "Add Note Title"
                  ),
                ),
              ),
               SizedBox(height: 20.0,),
               SizedBox(
                width: 300.0,
                child: TextField(
                  controller: _remark,
                  maxLines: 4,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11.0)
                    ),
                    filled: true,
                    fillColor: Colors.red.shade50,
                    hintText: "Add Remark"
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: ()async{
                  var title = _title.text.toString();
                  var remark = _remark.text.toString();
                  FirebaseDatabase.instance.ref("Notes").child(widget.updateId).update({
                     "title": title,
                     "remark": remark,
                  }).then((value) async{               
                   await ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text("Update Sucessfully"),
                        duration: Duration(seconds: 3),
                        backgroundColor: Colors.greenAccent,
                      )
                    );
                    Navigator.of(context).pop();

                  });
                },
                 child: Text("Update")
              )
            ],
          ),
        ),
      ) ,
    );
  }
}