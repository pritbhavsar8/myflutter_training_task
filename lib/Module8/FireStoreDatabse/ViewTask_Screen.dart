
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:myflutter_training_task/Module8/FireStoreDatabse/AddTask_Screen.dart';
import 'package:myflutter_training_task/Module8/FireStoreDatabse/EditScreen.dart';

class ViewTask extends StatefulWidget {
  const ViewTask({super.key});

  @override
  State<ViewTask> createState() => _ViewTaskState();
}

class _ViewTaskState extends State<ViewTask> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("View task"),
        centerTitle: true,
        backgroundColor: Colors.grey.shade300,
        foregroundColor: Colors.red.shade900,
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: (){
          Navigator.of(context).pop();
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => AddTask(),)
          );
        },
        label: Text("Add"),
        icon: Icon(Icons.add),
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
      ),
      body: StreamBuilder(
        stream: FirebaseFirestore.instance.collection("Notes").snapshots(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot){
          if(snapshot.hasData)
          {
            if(snapshot.data!.size<=0){
              return Center(
                child: Text("No Data"),
              );
            }
            else
            {
              return ListView.builder(
                itemCount: snapshot.data!.docs.length,
                itemBuilder: (context, index) {
                  var data = snapshot.data!.docs;
                  return ListTile(
                    title: Text(data[index]["Title"].toString()),
                    subtitle: Text(data[index]["Remark"].toString()),
                    trailing: IconButton(
                    onPressed: () async{
                      var id = data[index].id.toString();
                      await FirebaseFirestore.instance.collection("Notes").doc(id).delete().then((value){
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text("Delete Notes Sucessfully"),
                            backgroundColor: Colors.green,
                            duration: Duration(seconds: 2),
                          )
                        );
                      });
                    },
                    icon: Icon(Icons.delete,color: Colors.red,),
                  ),
                   onLongPress: () async{
                     var updateid = data[index].id.toString();
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => EditScreen(
                       updateid: updateid,
                      ),),
                    );
                  },

                  );
                },
              );
            //   return ListView(
            //   padding: EdgeInsets.all(10.0),  
            //   children: snapshot.data!.docs.map((document){
            //     return ListTile(
            //       leading: Image.network(document["fileurl"].toString()),
            //       title: Text(document["Title"].toString()),
            //       subtitle: Text(document["Remark"].toString()),
            //       trailing: IconButton(
            //         onPressed: () async{
            //           var id = document.id.toString();
            //           await FirebaseFirestore.instance.collection("Notes").doc(id).delete().then((value){
            //             ScaffoldMessenger.of(context).showSnackBar(
            //               SnackBar(
            //                 content: Text("Delete Notes Sucessfully"),
            //                 backgroundColor: Colors.green,
            //                 duration: Duration(seconds: 2),
            //               )
            //             );
            //           });
            //         },
            //         icon: Icon(Icons.delete,color: Colors.red,),
            //       ),
            //       onLongPress: () async{
            //          var updateid = document.id.toString();
            //         Navigator.of(context).push(
            //           MaterialPageRoute(builder: (context) => EditScreen(
            //            updateid: updateid,
            //           ),),
            //         );
            //       },
                 
            //     );
            //   }).toList(),
            // );
            } 
          }
          else{
            return Center(
              child: CircularProgressIndicator(
                color: Colors.black,
              ),
            );
          }
        },
      ),
    );
  }
}