import 'package:flutter/material.dart'; // custom slider mate syncfusion_flutter_slider pakage use karvu

class slider extends StatefulWidget {
  const slider({super.key});

  @override
  State<slider> createState() => _sliderState();
}

class _sliderState extends State<slider> {
  double defaultValue = 0;
  double opacity = 0.3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: Slider(
      //       value:opacity ,
      //       max: 1.0,
      //       min: 0.0,
      //       activeColor: Colors.green,
      //       inactiveColor: Colors.red,
      //       thumbColor: Colors.brown,
      //       label: "Volume Up",
      //       divisions: 5, 
      
      //       onChanged: (value) {
      //         setState(() {
      //           defaultValue = value;
      //         });
      //       },
      //     ),
       body: Column(
        children: [
           Text("Hello",style: TextStyle(
             color: Colors.blue.withOpacity(opacity)
           ),),
          Slider(
            value: opacity,
            onChanged: (val) {
               setState(() {
                 opacity = val;
             });
            },
          ),
        ],
      ),
    );
  }
}