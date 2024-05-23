import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:myflutter_training_task/Module8/FireStoreDatabse/ViewTask_Screen.dart';
import 'package:image_picker/image_picker.dart';
import 'package:uuid/uuid.dart';

class AddTask extends StatefulWidget {
  const AddTask({super.key});

  @override
  State<AddTask> createState() => _AddTaskState();
}

class _AddTaskState extends State<AddTask> {
  TextEditingController _title = TextEditingController();
  TextEditingController _remark = TextEditingController();
  ImagePicker picker = ImagePicker();
  File? selectedfile;

  Widget button(){
   return Container(
    width: 300.0,
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(11.0)
        ),
      ),
      onPressed: () async {
          // await FirebaseFirestore.instance.collection("Notes").add({ // in firestore database store data in form of collection and document 
          //      "Title" : _title.text.toString(),
          //      "Remark" : _remark.text.toString(),
          //     //  "filename": filename,
          //     //  "fileurl": fileurl
          //   }).then((value) async{
          //     await ScaffoldMessenger.of(context).showSnackBar(
          //      SnackBar(
          //      content: Text("Notes Add Sucessfully"),
          //      backgroundColor: Colors.greenAccent.shade200,
          //      duration: Duration(seconds: 2),
          //     )
          //   );
          //    _title.text = "";
          //    _remark.text = "";
          //    Navigator.of(context).push(
          //    MaterialPageRoute(builder: (context) => ViewTask(),)
          //   );
          // });
        if(selectedfile != null) 
        {
          var uuid = Uuid();
          var filename = uuid.v4();
          FirebaseStorage.instance.ref(filename).putFile(selectedfile!).whenComplete((){}).then((filedata) async{
            await filedata.ref.getDownloadURL().then((fileurl) async {
               await FirebaseFirestore.instance.collection("Notes").add({
               "Title" : _title.text.toString(),
               "Remark" : _remark.text.toString(),
               "filename": filename,
               "fileurl": fileurl
            }).then((value) async{
              await ScaffoldMessenger.of(context).showSnackBar(
               SnackBar(
               content: Text("Notes Add Sucessfully"),
               backgroundColor: Colors.greenAccent.shade200,
               duration: Duration(seconds: 2),
              )
            );
             _title.text = "";
             _remark.text = "";
             Navigator.of(context).push(
             MaterialPageRoute(builder: (context) => ViewTask(),)
            );
          });

           });
          });        
        }
      },
      child: Text("Add"),
    ),
  );
  
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Task"),
        centerTitle: true,
        backgroundColor: Colors.grey.shade300,
        foregroundColor: Colors.red.shade900,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
               child: (selectedfile==null)? Image.asset("assets/img/No-Image.png",width: 70.0,height: 70.0,):Image.file(selectedfile!)
              ),
              SizedBox(height: 10.0,),
              Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                     IconButton(
                         onPressed: () async{
                           XFile? photo = await picker.pickImage(source: ImageSource.camera);
                           setState(() {
                             selectedfile = File(photo!.path);
                            });
                          },
                         icon: Icon(Icons.camera_alt,size: 40.0,color: Colors.blue),
                      ),
                      SizedBox(width: 10.0,),
                      IconButton(
                          onPressed: () async{
                            XFile? photo = await picker.pickImage(source: ImageSource.gallery);
                            setState(() {
                              selectedfile = File(photo!.path);
                            });
                          },
                          icon: Icon(Icons.image,size: 40.0,color: Colors.blue)
                      ),
                    ],
                  ),
               SizedBox(height: 20.0,),   
               SizedBox(
                width: 300.0,
                child: TextFormField(
                  controller: _title,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11.0),
                    ),
                    hintText: "Add Note Title",
                    filled: true,
                    fillColor: Colors.red.shade50
                  ),
                ),
              ),
              SizedBox(height: 20.0,),
              SizedBox(
                width: 300.0,
                child: TextFormField(
                  maxLines: 5,
                  controller: _remark,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11.0),
                    ),
                    hintText: "Add Remark",
                    filled: true,
                    fillColor: Colors.red.shade50
                  ),
                ),
              ),
              SizedBox(height: 20.0,),
              button()
            ],
          ),
        ),
      ),
    );
  }
}
