import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:myflutter_training_task/Module8/RealTimeDatabase/addTask.dart';
import 'package:myflutter_training_task/Module8/RealTimeDatabase/editTask.dart';

class viewTask extends StatefulWidget {
  const viewTask({super.key});

  @override
  State<viewTask> createState() => _viewTaskState();
}
class _viewTaskState extends State<viewTask> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("View Task"),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => addTask(),)
          );
        },
        child: Icon(Icons.add),
      ),
      body:StreamBuilder(
        stream: FirebaseDatabase.instance.ref("Notes").onValue,
        builder: (context,AsyncSnapshot<DatabaseEvent> snapshot) {
         if (snapshot.hasData) {
          Map<dynamic,dynamic> map = snapshot.data!.snapshot.value as dynamic;
          List<dynamic> list =[];
          list.clear();
          list= map.values.toList();

           return ListView.builder(
            itemCount: snapshot.data!.snapshot.children.length,        
            itemBuilder:(context, index) {
              return ListTile( 
                title:    Text('Title: ${list[index]["title"]}'),
                subtitle: Text('Remark: ${list[index]["remark"]}'),
                trailing: Text('ID: ${list[index]["id"]}'),
                leading: IconButton(
                  onPressed: ()async{
                    var id = list[index]["id"];
                    FirebaseDatabase.instance.ref("Notes").child(id).remove().then((value){
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text("delete task sucessfully"),
                          backgroundColor: Colors.green,
                          duration: Duration(seconds: 3),
                        )
                      );
                    });
                  },
                  icon: Icon(Icons.delete,color: Colors.red,),
                ),
                onLongPress: (){
                   var updateid = list[index]["id"];
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => editTask(
                     updateId:updateid,
              
                    ),)
                  );
                },
              );
             },
          );
         }
         else{
          return Center(
            child: CircularProgressIndicator(),
          );

         }
        },
      )  ,
    );
  }
}