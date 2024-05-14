import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  TextEditingController _message = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade300,
        title: Text("Chat"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              child: StreamBuilder(
                stream: FirebaseDatabase.instance.ref().child("Chats").onValue,
                builder: (context,AsyncSnapshot<DatabaseEvent> snapshot) {
                  if(snapshot.hasData){
                     Map<dynamic,dynamic> map = snapshot.data!.snapshot.value as dynamic;
                     List<dynamic> list =[];
                     list.clear();
                     list= map.values.toList();
                     return ListView.builder(
                      itemCount: snapshot.data!.snapshot.children.length,
                      itemBuilder: (context, index) {
                        return SingleChildScrollView(
                          child: Card(
                            margin: EdgeInsets.all(10.0),
                            elevation: 5.0,
                            child: ListTile(
                              leading: Text(list[index]["message"]),
                            
                            ),
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
              ),
            )
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(25.0)
                  ),
                  child: Row(
                    children: [
                      IconButton(onPressed: (){}, icon: Icon(Icons.emoji_emotions_outlined)),
                      Expanded(
                        child: TextField(
                          keyboardType: TextInputType.text,
                          controller: _message,
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(11.0),
                              borderSide: BorderSide(
                                color: Colors.grey.shade200
                              )
                            ),
                             enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(11.0),
                              borderSide: BorderSide(
                                color: Colors.grey
                              )
                            ),
                            hintText: "Type a message",
                            // filled: true,
                            // fillColor: Colors.white
                          ),
                        ),
                      ),
                      IconButton(onPressed: (){}, icon: Icon(Icons.camera_alt)),
                    ],
                  ),
                ),
              ),
              IconButton(onPressed: ()async{
                await FirebaseDatabase.instance.ref().child("Chats").push().set({
                  "message": _message.text.toString(),
                }).then((value){
                  setState(() {
                    _message.text = "";
                  });
                });

              }, icon: Icon(Icons.send))
            ],
          )
        ],
      ),
    );
  }
}