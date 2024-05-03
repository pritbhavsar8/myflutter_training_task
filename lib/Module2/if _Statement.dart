import 'dart:io';

void main(){
 // 4. Login Validation (Simple if):
stdout.write("Enter Username:");
String ? username = stdin.readLineSync();
stdout.write("Enter Password:");
int password = int.parse(stdin.readLineSync()!);

if(username=="test@gmail.com" && password == 123456)
{
  print("login successfully");
}
else
  {
    print("Login failed");
  }
// 5. Number Comparison:
  stdout.write("Enter Number1:");
  int ? number1 = int.parse(stdin.readLineSync()!);
  stdout.write("Enter Number2:");
  int number2 = int.parse(stdin.readLineSync()!);
  if(number1>number2){
    print("number1 is gretar than number2");
  }
  else if (number2>number1){
    print("number2 is gretar than number1");
  }
  else if (number1==number2){
    print("number1 equal to number2");
  }
// 6. Vowel Check:
  stdout.write("Enter any one of AtoZ:");
  String ? alphabet = stdin.readLineSync();
  if(alphabet=="a" || alphabet=="e"|| alphabet=="i"||alphabet=="o"||alphabet=="u"){
    print("Vowels");
  }
  else{
    print("Consonant");
  }
// 7. Positive or Negative Check:
  stdout.write("Enter Number1:");
  int  num1 = int.parse(stdin.readLineSync()!);
  if(num1<0){
    print("Negative Number");
  }
  else if (num1>0){
    print("positive Number");
  }
  else if (num1==0){
    print("Zero");
  }
//  8. Leap Year Check:
  stdout.write("Enter year:");
  int  year = int.parse(stdin.readLineSync()!);
  if(year%4==0){
    print("$year is Leap year");
  }
  else{
    print("Normal year");
  }
}