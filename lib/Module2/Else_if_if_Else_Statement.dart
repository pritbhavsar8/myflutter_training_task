import 'dart:io';

void main()
{
//  1. Temperature Check:
stdout.write("Enter Temp in Celcius:");
int temp = int.parse(stdin.readLineSync()!);
if(temp>=40 && temp<=52){
  print("temp is very high");
}
else if (temp>=20 && temp<=35){
  print("temp is moderate");
}
else if(temp<20){
  print("temp is cold");
}

// 2. Movie Rating (Simple if...else):

 stdout.write("Enter your Age:");
  int age = int.parse(stdin.readLineSync()!);
if(age >= 18){
  print("Adult Movie");
}
else if (age >= 13 && age <18 ){
  print("U/A");
}
// 3. Day of the Week (Enhanced else if...):
  stdout.write("Enter your Number(1-7):");
  int day = int.parse(stdin.readLineSync()!);
  if(day==1){
    print("monday");
  }
  else if(day==2){
    print("tuesday");
  }
 else if(day==3){
    print("Wed");
  }
 else if(day==4){
    print("Thurseday");
  }
 else if(day==5){
    print("Friday");
  }
  else if(day==6){
    print("Saturday");
  }
  else if(day==7){
    print("Sunday");
  }
// 6. Month Name Check (Using else):
  stdout.write("Enter your Number(1-12):");
  int month = int.parse(stdin.readLineSync()!);
  if(month==1){
    print("January");
  }
  else if(month==2){
    print("Feb");
  }
  else if(month==3){
    print("March");
  }
  else if(month==4){
    print("April");
  }
  else if(month==5){
    print("May");
  }
  else if(month==6){
    print("June");
  }
  else if(month==7){
    print("july");
  }
  else if(month==8){
    print("Aug");
  }
  else if(month==9){
    print("sept");
  }
  else if(month==10){
    print("Oct");
  }
  else if(month==11){
    print("Nov");
  }
  else if(month==12){
    print("Dec");
  }
// 10. Simple Calculator:
  stdout.write("Enter Number1:");
  int number1 = int.parse(stdin.readLineSync()!);
  stdout.write("Enter Number2:");
  int number2 = int.parse(stdin.readLineSync()!);
  int sum = number1+ number2;
  int sub = number1 - number2;
  int multi = number1 * number2;
  double devide = number1/number2;
  print(sum);
  print(sub);
  print(multi);
  print(devide);
}