import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class EditScreen extends StatefulWidget {
  var updateid = "";
   EditScreen({required this.updateid});

  @override
  State<EditScreen> createState() => _EditScreenState();
}

class _EditScreenState extends State<EditScreen> {
  TextEditingController _title = TextEditingController();
  TextEditingController _remark = TextEditingController();
  getdeta()async{
    await FirebaseFirestore.instance.collection("Notes").doc(widget.updateid).get().then((document){
      setState(() {
      _title.text = document["Title"].toString();
      _remark.text = document["Remark"].toString();
     });
    });
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getdeta();
  }
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
        ) ,
        onPressed: () {
          var title = _title.text.toString();
          var remark = _remark.text.toString();
          FirebaseFirestore.instance.collection("Notes").doc(widget.updateid).update({
            "Title": title,
            "Remark": remark,
          }).then((value){
            Navigator.of(context).pop();
          });
        },
        child: Text("Update"),
      ),

    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Edit Task"),
        centerTitle: true,
        backgroundColor: Colors.grey.shade300,
        foregroundColor: Colors.red.shade900,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
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
    );
  }
}