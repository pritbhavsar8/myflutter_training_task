import 'package:flutter/material.dart';
import 'package:myflutter_training_task/Module6/Product_Screen.dart';

class AnimateWidget extends StatefulWidget {
  

  @override
  State<AnimateWidget> createState() => _AnimateWidgetState();
}

class _AnimateWidgetState extends State<AnimateWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Hero(
                tag: "productTitle",
                child: Text("Hello")//Image.network("https://images.news18.com/ibnlive/uploads/2021/08/modi-2-16289647184x3.jpg?impolicy=website&width=640&height=480",fit: BoxFit.cover,height: 100.0,width: 150.0,)
              ),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(onPressed: (){
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => ProductScreen(),)
              );
            }, child: Text("product screen")),
            SizedBox(height: 20.0),
            Hero(
              tag: "backButton",
              child: Container(
                width: 100.0,
                height: 100.0,
                color: Colors.blueAccent,
              ),
            )
          ],
        ),
      ),
    );
  }
}