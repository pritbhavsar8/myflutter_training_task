import 'dart:io';

void main(){
  stdout.write("enter number between(1 to 7)");
  int number = int.parse(stdin.readLineSync()!);
  switch (number) {
    case 1:
      print("Monday");
      break;
    case 2:
      print("tuesday");
      break; 
    case 3:
      print("wednesday");
      break;
    case 4:
      print("Thurseday");
      break;
      case 5:
      print("Friday");
      break;
      case 6:
      print("Saturday");
      break; 
      case 7:
      print("sunday");
      break;    
    default:
    print("invalid");
  }
  // 2.Simple Calculator:
   stdout.write("enter number:1");
   int n1 = int.parse(stdin.readLineSync()!);
   stdout.write("enter number:2");
   int n2 = int.parse(stdin.readLineSync()!);
   stdout.write("enter operator like (+ or - or * or /)");
   String ? operator = stdin.readLineSync()!;
   switch (operator) 
    {
      case "+":
       print(n1+n2);
       break;
       case "-":
       print(n1-n2);
       break;
       case "*":
       print(n1*n2);
       break; 
       case "/":
       print(n1/n2);
       break; 
       default:
      print("invalid operator");
    }
    // 3. Grade Evaluation:
    stdout.write("enter Grade ");
    String ? grade = stdin.readLineSync()!;
    switch (grade) 
    {
       case "A":
        print("grede point:5.0");
        break;
        case "B":
        print("grede point:4.0");
        break;
        case "C":
        print("grede point:3.0");
        break;
        case "D":
        print("grede point:2.0");
        break;
         case "F":
        print("grede point:1.0");
        break;
      default:
    }
    // 4: month name from number
     stdout.write("enter number between(1 to 12)");
     int num = int.parse(stdin.readLineSync()!);
  switch (number) {
    case 1:
      print("jan");
      break;
    case 2:
      print("feb");
      break; 
    case 3:
      print("march");
      break;
    case 4:
      print("april");
      break;
      case 5:
      print("may");
      break;
      case 6:
      print("june");
      break; 
      case 7:
      print("july");
      break;
       case 8:
      print("august");
      break;   
      case 9:
      print("sept");
      break;
       case 10:
      print("oct");
      break;  
      case 11:
      print("nov");
      break;
      case 12:
      print("dec");
      break;             
    default:
    print("invalid");
  }
  // 5 Vowel or Consonant Check:
    stdout.write("enter any  character(a to z) ");
    String ?char = stdin.readLineSync()!;
    switch (char) {
      case "a":
        print("Vowel");
        break;
       case "e":
        print("Vowel");
        break; 
       case "i":
        print("Vowel");
        break; 
       case "o":
        print("Vowel");
        break; 
       case "u":
        print("Vowel");
        break;  
      default:
      print("Consonant");
    }
    // 6. Simple Traffic Light Simulator:
    // List state = ["Red","yellow","green"];
    // switch (state) {
    //   case state[0]:
        
    //     break;
    //   default:
    // }

   // 7.Shape Area Calculation (Basic):
    stdout.write(
      "select shape:\n"
      "1.Circle\n"
      "2.Squre\n");
    String? shape = stdin.readLineSync();
    switch (shape) {
      case "1":
        final pi = 3.14;
        var r = 40;
        var carea = pi*r*r;
        print(carea);
        break;
      case "2":
       var length = 23;
       var height = 20;  
       var sarea = length*height;
       print(sarea);
      default:
      print("enter valid shape");
    }
    //8. Menu with Switch and Fall-Through (Optional):
    stdout.write(
      "select in menu:\n"
      "1.view Product\n"
      "2.exit\n");
    String? select = stdin.readLineSync();
    switch (select) {
      case "1":
        print("view Product");
        break;
      case "2":
       print("exit");
      default:
      print("invalid choices.");
    }
    // 10  Simple Unit Converter (Switch and Math):
     stdout.write("enter value in cm");
     int value = int.parse(stdin.readLineSync()!);
      stdout.write("select unit cm or inch");
     String ? unit = stdin.readLineSync();
     switch (unit) {
       case "inch":
         var i = value*2.54;
         print(i);
         break;
        case "cm":       
         var c = value*0.4;
         print(c);
         break;
       default:
     }
}