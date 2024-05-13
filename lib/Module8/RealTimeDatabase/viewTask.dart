import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:myflutter_training_task/Module8/RealTimeDatabase/addTask.dart';

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
              return Container(
                width: 40.0,
                child: ListTile( 
                  title:    Text('Title: ${list[index]["title"]}'),
                  subtitle: Text('Remark: ${list[index]["remark"]}'),
                  trailing: Text('ID: ${list[index]["id"]}'),
                  leading: IconButton(
                    onPressed: ()async{
                      // await FirebaseDatabase.instance.ref("Notes").child(snapshot.child("id").value.toString()).remove();
                    },
                    icon: Icon(Icons.delete),
                  ),
                  onLongPress: (){},
                ),
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