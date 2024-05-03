import 'dart:io';

void main()
{
stdout.write("enter the name:");
var name =stdin.readLineSync();
print("your name is $name");

stdout.write("enter the age:");
int  age  =int.parse(stdin.readLineSync()!);
print("age is $age");

stdout.write("enter number1:");
int  num1 = int.parse(stdin.readLineSync()!);
print("value of number1 $num1");
stdout.write("enter number2:");
int num2= int.parse(stdin.readLineSync()!);
print("value of number2 $num2");
int total = num1+ num2;
print("sum of number1+number2=$total");

bool running = true;

while (running) {
  print("Menu:");
  print("1. Play");
  print("2. Exit");

  stdout.write("Enter your choice: ");
  String? userInput = stdin.readLineSync();

  switch (userInput) {
    case "1":
      print("Starting the game...");
      // Call your play function here
      break;
    case "2":
      print("Exiting the program...");
      running = false;
      break;
    default:
      print("Invalid choice. Please enter 1 or 2.");
      break;
  }
}


}