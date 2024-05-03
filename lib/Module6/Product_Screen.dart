import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'Animate_Widget.dart';

class ProductScreen extends StatefulWidget {
  

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Hero(
              tag: "productTitle",
              child: Text("good morning")//Image.network("https://images.news18.com/ibnlive/uploads/2021/08/modi-2-16289647184x3.jpg?impolicy=website&width=640&height=480")
            ),
            Hero(
              tag: "backButton",
              child: ElevatedButton(onPressed: (){
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => AnimateWidget(),)
                );
              }, child: Text("back"))
            )
          ],
        ),
      ),
    );
  }
}