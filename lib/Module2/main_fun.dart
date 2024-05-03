import 'dart:io';

void main ()
{
  //1 Simple Hello World Program:
  print("hello world");

// 2  User Input and Greeting:
stdout.write("enter your name:");
var name = stdin.readLineSync();
print("my name is $name");

//3 Basic Arithmetic Operations:
int a = 10;
int b = 30;
int sum = a+b;
int sub = a-b;
int multi = a*b;
double devide = a/b;

  print("a+b=$sum");
  print("a-b=$sub");
  print("a*b=$multi");
  print("a/b=$devide");

 //4  Working with Strings:
String str1 = "prit";
String str2 = "Ansh";
print(str1 +" "+str2);

// 5. Conditional Statements (if and else):
var number1 = 33;
if(number1%2==0){
  print("even");
}else{
  print("odd");
}
 //6. Simple Loop (Using for Loop):

 for(var i = 1; i<=10; i++)
 {
  print(i);
 }
  rect_area();

 // 9. Simple List Manipulation:
 List<String> Name= ["vivek","yash","Prit"];
 Name.add("gopal");
 print(Name);
 Name.remove("vivek");
  print(Name);
}

//7. Basic Function (Calling a Function from main()):

 void rect_area(){
  var length = 12;
  var height = 23;
  var area = length*height;
  print(area);
}