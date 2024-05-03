void main()
{
var obj = circle();
obj.calculateArea();
var obj2 = Rectangle();
obj2.calculateArea();
 Manager manager = Manager();
 manager.name = "jay";
 print(manager.name);
 manager.salary = 56000;
 print(manager.salary);
 print(manager.AddTeam("arjun"));

 Developer developer =  Developer();
 developer.name = "dhruv";
 print( developer.name);
 developer.salary = 25000;
 print(developer.salary);

  Dog  dog  = Dog();
  dog.makeSound();
  Cat cat = Cat();
  cat.makeSound();

  Car car = Car();
  car.model= "E class";
  print(car.model);
  car.year= 2022;
  print(car.year);
  print(car.door);

  Motorcycle motorcycle = Motorcycle();
   motorcycle.model= "sp125";
  print( motorcycle.model);
  motorcycle.year= 2023;
  print(motorcycle.year);
  print(motorcycle.door);
  Apple apple = Apple();
  print(apple.test);
  print(apple.Color="red");
  Orange orange = Orange();
  print(orange.test);
  print(orange.Color="orange");

  Cube cube = Cube();
  cube.calculateVolume();
  Sphere sphere = Sphere();
  sphere.calculateVolume();

  SavingsAccount savingsAccount = SavingsAccount();
 print(savingsAccount.fee);
 print(savingsAccount.withdraw_limit);
 print(savingsAccount.account_no="124365789");
 print(savingsAccount.balance);

 CheckingAccount checkingAccount = CheckingAccount();
 print(checkingAccount.fee);
 print(checkingAccount.withdraw_limit);
 print(checkingAccount.account_no="346578910");
 print(savingsAccount.balance);

 TextDocument textDocument = TextDocument();
 textDocument.title = "document1";
 print(textDocument.title);
 textDocument.Author= "r.k singh";
 print(textDocument.Author);

 Spreadsheet spreadsheet = Spreadsheet();
 spreadsheet.title = "spreadsheet1";
 print(spreadsheet.title);
 print(spreadsheet.Author= "s.p shah");

}
// Shape Hierarchy:
abstract class Shape
{
  calculateArea();
}
class circle extends Shape
{
  double pi = 3.14;
  double redius = 20.0;
  calculateArea(){
   double area = pi*redius*redius;
   print(area);
  }
}
class Rectangle extends Shape
{
  calculateArea()
  {
    int width = 20;
    int height = 10;
    int area = width*height;
    print(area);
  }
}
// Employee Hierarchy:
class Employee
{
  String? name;
  double? salary;
}
class Manager extends Employee
{
  List<String> teamlist = [];
  AddTeam(String employe){
    teamlist.add(employe);
  }
}
class Developer extends Employee
{
  
}
// Animal Hierarchy:
abstract class Animal
{
  makeSound();
}
class Dog extends Animal
{
  makeSound()
  {
  print("woof");
  }
}
class Cat extends Animal
{
   makeSound()
  {
  print("meow");
  }
}
//  Vehicle Hierarchy:
abstract class Vehicle
{
 String ?model;
 int ?year;
}
class Car extends Vehicle
{
  int door = 4;
}
class Motorcycle extends Vehicle
{
 int door = 0;
}
// Shape with Color (Optional):
 abstract class shape 
 {
  calculateArea();
 }
 class ColoredShape extends shape
 {
  String ?Color; 
  calculateArea(){

  }

 }
 class ColoredCircle extends ColoredShape
 {

 }
 class ColoredRectangle extends ColoredShape
 {
  
 }
//  Fruit with Color and Taste
class Fruit
{
  String? Color;
}
class Apple extends Fruit
{
String test = "sweet";
}
class Orange extends Fruit
{
String test = "sour & sweet";
}
// Geometric Solid with Volume (Optional):
abstract class GeometricSolid
{
  calculateVolume();
}
class Cube extends GeometricSolid
{
  double a = 4.5;
  calculateVolume()
  {
    double volume = a*a*a;
    print(volume);
  }
}
class Sphere extends GeometricSolid
{
  double pi = 3.14;
  double r = 5.6;
  calculateVolume()
  {
   double Volume = 4/3*pi*r*r*r;
   print(Volume);
  }
}
// Account Hierarchy (Optional):
abstract class Account
{
  String account_no ="";
  double balance = 100000;
}
class SavingsAccount extends Account
{
double withdraw_limit = 15000;
int fee = 100;
}
class CheckingAccount extends Account
{
double withdraw_limit = 20000;
int fee = 200;
}
// User with Roles :
class User
{
String? username;
String ? email;
}
class Admin extends User
{

}
class RegularUser extends User
{

}
// Document Hierarchy :
abstract class Document
{
  String? title;
  String ? Author;

}
class TextDocument extends Document
{
 void saveAsTxt() {
    print('Saving ${title} as .txt');
  }
}
class Spreadsheet extends Document
{
  void saveAsCsv() {
    print('Saving ${title} as .csv');
  }
}