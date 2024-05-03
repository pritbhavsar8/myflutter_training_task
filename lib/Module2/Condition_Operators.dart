import 'dart:io';

void main()
{
  // 1. Simple Age Check (if-else):
  stdout.write("Enter Your Age:");
 int age = int.parse(stdin.readLineSync()!);
 if(age>=18){
   print("Adult");
 }
 else{
   print("minor");
 }
 // 2. Even or Odd Check (if-else):
  var number1 = 33;
  if(number1%2==0){
    print("even");
  }else{
    print("odd");
  }
// 3. Ternary Operator (Simple Example):
  (age>=18)? print("adult"): print("minor");

//  4. Grade Evaluation (Nested if-else):
  stdout.write("Please Enter Your Percentage:");
  int per = int.parse(stdin.readLineSync()!);
  if(per>80 && per<=100){
    print("grade:A");
  }
  else if(per>60 && per<=80){
    print("grade:B");
  }
  else if(per>40 && per<=60){
    print("grade:C");
  }
  else if(per>=35 && per<=50){
    print("grade:d");
  }
  else{
    print("fail");
  }

  // 10.Logical Operators (&& ||,!):
  bool isstudent = false;
  stdout.write("if purchase amount:");
  int totalamount = int.parse(stdin.readLineSync()!);
  if(isstudent=!isstudent && totalamount>100){
    var discount = totalamount*15/100;
    print("Discount Price: $discount");
  }
  else{
    print(totalamount);
  }
// 9. Conditional Expressions:
  var choice1 = "square";
  var choice2 = "circle";
stdout.write("user choice shape:");
  String ? shape = stdin.readLineSync();
  if(choice1==shape){
    double length = 40;
    double height  = 40;
    double sqrarea = length*height;
    print(sqrarea);
  }
  else if(shape==choice2){
    final pi = 3.14;
    double r = 20.0;
    double cirarea = pi*r*r;
    print(cirarea);

  }


}