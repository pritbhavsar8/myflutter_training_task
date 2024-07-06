
import 'package:flutter/material.dart';

class pageView extends StatefulWidget {
  const pageView({super.key});

  @override
  State<pageView> createState() => _pageViewState();
}

class _pageViewState extends State<pageView> {
  int currentIndex = 0;
  Widget page1(){
    return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Container(
        height: 430.0,
        width: 400.0,
        decoration: BoxDecoration(
          image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage("assets/img/ob1.png")
         )
       ),
      ),
      SizedBox(height: 40.0,),
      Text("Find Trusted Doctors",style: TextStyle(
          color: Color(0xff222222),
          fontWeight: FontWeight.w700,
          fontSize: 24.0,
          fontFamily: "Rubik"
      ),),
      SizedBox(height: 10.0,),
        Text(" Contrary to popular belief, Lorem Ipsum is not"
          "simply random text. It has roots in a piece of it"
          "over 2000 years old.",textAlign: TextAlign.center,style: TextStyle(
            color: Color(0xff677294),
            fontWeight: FontWeight.w400,
            fontSize: 14.0,
            fontFamily: "Rubik"
      ),),
      SizedBox(height: 40.0,),
       row()
      ],
    );
  }
   Widget page2(){
    return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Container(
        height: 430.0,
        width: 400.0,
        decoration: BoxDecoration(
          image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage("assets/img/ob2.png")
         )
       ),
      ),
      SizedBox(height: 40.0,),
      Text("Choose Best Doctors",style: TextStyle(
          color: Color(0xff222222),
          fontWeight: FontWeight.w700,
          fontSize: 24.0,
          fontFamily: "Rubik"
      ),),
      SizedBox(height: 10.0,),
        Text(" Contrary to popular belief, Lorem Ipsum is not"
          "simply random text. It has roots in a piece of it"
          "over 2000 years old.",textAlign: TextAlign.center,style: TextStyle(
            color: Color(0xff677294),
            fontWeight: FontWeight.w400,
            fontSize: 14.0,
            fontFamily: "Rubik"
      ),),
      SizedBox(height: 40.0,),
       row()
      ],
    );
  }
   Widget page3(){
    return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Container(
        height: 430.0,
        width: 400.0,
        decoration: BoxDecoration(
          image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage("assets/img/ob3.png")
         )
       ),
      ),
      SizedBox(height: 40.0,),
      Text("Easy Appointments",style: TextStyle(
          color: Color(0xff222222),
          fontWeight: FontWeight.w700,
          fontSize: 24.0,
          fontFamily: "Rubik"
      ),),
      SizedBox(height: 10.0,),
        Text(" Contrary to popular belief, Lorem Ipsum is not"
          "simply random text. It has roots in a piece of it"
          "over 2000 years old.",textAlign: TextAlign.center,style: TextStyle(
            color: Color(0xff677294),
            fontWeight: FontWeight.w400,
            fontSize: 14.0,
            fontFamily: "Rubik"
      ),),
      SizedBox(height: 40.0,),
       row()
      ],
    );
  }
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          page1(),
          page2(),
          page3(),
        ],
        scrollDirection: Axis.horizontal,
        onPageChanged: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        pageSnapping: false, // pageSnapping false hase to jetlu swipe karsu tetlu swipe thase
      
      ),
    );
  }
   Widget row(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
      currentIndex==0?Icon(Icons.circle,size: 10.0,color: Colors.blue,):Icon(Icons.circle_outlined,size: 10.0,),
      currentIndex==1?Icon(Icons.circle,size: 10.0,color: Colors.blue,):Icon(Icons.circle_outlined,size: 10.0,),
      currentIndex==2?Icon(Icons.circle,size: 10.0,color: Colors.blue,):Icon(Icons.circle_outlined,size: 10.0,),
      ],
      
    );
  }
}
