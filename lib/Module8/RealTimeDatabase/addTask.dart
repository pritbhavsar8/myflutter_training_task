import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:myflutter_training_task/Module8/RealTimeDatabase/viewTask.dart';

class addTask extends StatefulWidget {
  @override
  State<addTask> createState() => _addTaskState();
}

class _addTaskState extends State<addTask> {
  TextEditingController _title = TextEditingController();
  TextEditingController _remark = TextEditingController();
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Task"),
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
                var id = DateTime.now().millisecondsSinceEpoch.toString();
                await FirebaseDatabase.instance.ref("Notes").child(id).set({
                  "title": _title.text.toString(),
                  "remark": _remark.text.toString(),
                  "id": id
                }).then((value)async{
                  await ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text("Add Notes Sucessfully"),
                      backgroundColor: Colors.greenAccent,
                      duration: Duration(seconds: 3),
                    )
                  );
                  setState(() {
                    _title.text ="";
                   _remark.text= "";
                  });
                  Navigator.of(context).pop();
                  Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => viewTask(),)
                );

                }).onError((error, stackTrace){
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(error.toString()),
                      backgroundColor: Colors.red,
                      duration: Duration(seconds: 3),
                    )
                  );
                });
                
                },
                 child: Text("Add")
              )
            ],
          ),
        ),
      ) ,
      
    );
  }
}