import 'dart:math';

void main(){
 var x =  rect_area(40,45);
 print(x);
 var  obj = Calculator();
 print(obj.Add(56.12, 90.34)); // Funcation call
 print(obj.Minus(78, 79)); // Funcation call
 print(obj.Multi(45, 90)); // Funcation call
 print(obj.Divide(78, 90)); // Funcation call

string_manipulate();

 Square square = Square();
 square.calculateArea();
 Circle circle = Circle();
 circle.calculateArea();

 print('Area of square: ${square.calculateArea()}');
 print('Area of circle: ${circle.calculateArea()}');

 Manager manager = Manager();
 String managername = manager.name = "Juhul";
 double salary = manager.salary = 75000;
 String depart = manager.department= "Computer";
  print("Manager Name: $managername");
  print("Salary: $salary");
   print("Department: $depart");

   RegularEmployee regularEmployee = RegularEmployee();
  String regularEmployeename = regularEmployee.name = "akash";
  double sal = regularEmployee.salary = 40000;
  double bonus = regularEmployee.bonus= 20000;
  print("regularEmployee Name: $managername");
  print("Salary: $sal");
   print("Bonus: $bonus");
}
 // 1. Area Calculation Function:
 int rect_area(var length,var height){
  var area = length*height;
  return area;
}
// 2. Simple Calculator Class:
class Calculator
{
 num Add(var num1,var num2) // Funcation Declare
  {
    var sum = num1+num2; // Funcation Define
    return sum;
  }
  int Minus(var num1,var num2) // Funcation Declare
  {
    var sub = num1-num2; // Funcation Define
    return sub;
  }
   int Multi(var num1,var num2) // Funcation Declare
  {
    var multi = num1*num2; // Funcation Define
    return multi;
  }
   num Divide(var num1,var num2) // Funcation Declare
  {
    var divide = num1/num2; // Funcation Define
    return divide;
  }
}
// 4. String Manipulation Functions:
string_manipulate(){
  String str = "india";
  for(var i = str.length-1; i>=0; i--){
    print(str[i]);
  }
   // count char
  var trim = str.trim();
  var char = trim.length;
  print(char);
}
abstract class Shape
  {
   calculateArea();
  }

class Square extends Shape 
{
  var height = 32;
  var width= 32;
   calculateArea() {
    var square_area = height*width;
    return square_area;
  }
}

class Circle extends Shape 
{

   final pi = 3.14;
   var redius = 30;
   calculateArea() {
    double circle_area = pi * redius * redius;
   return circle_area;
  }
}

class Employee
{
  String ? name;
  double ? salary;
}
class Manager extends Employee
{
   String ?department;
}
class RegularEmployee extends Employee
{
 double? bonus;
}

class Point {
  double ?x;
  double ?y;

  Point(this.x, this.y);

  double distanceTo(Point other) {
    double deltaX = other.x! - x!;
    double deltaY = other.y! - y!;
    return sqrt(deltaX * deltaX + deltaY * deltaY);
  }
}
// Shopping Cart Class with Items:
class ShoppingCartItem
{
  String? product_name;
  double ? price;
  int ? quantity;
}
class ShoppingCart {
  List<ShoppingCartItem> item = [];
}