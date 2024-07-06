import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lottie/lottie.dart';

class lottie extends StatefulWidget {
  const lottie({super.key});

  @override
  State<lottie> createState() => _lottieState();
}

class _lottieState extends State<lottie> {
  List<String> lottie = ["assets/Lottie/Animation - 1719486895121.json","assets/Lottie/Buy- 1719489750201.json","assets/Lottie/CircularLoading- 171948971695.json","assets/Lottie/Loading- 1719489526577.json","assets/Lottie/Music- 1719487475184.json"];
  List<String> title = ["Bicycle","Buy","CircularLoading","Loading","Music"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        itemCount: lottie.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Center(
                child: Lottie.asset(lottie[index],
                height: 200,
                width: 200,
                repeat: true,
                reverse: true
                ),
              ),
              Text(title[index],textAlign: TextAlign.center,style: TextStyle(fontWeight:FontWeight.bold ),)



              
            ],
          );
        },
       
      ),
    );
  }
}