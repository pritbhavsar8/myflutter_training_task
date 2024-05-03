void main()
{
 var obj = circle();
 obj.calculateArea();
 var obj2 = Rectangle();
 obj2.calculateArea();
 
  Dog  dog  = Dog();
  dog.makeSound();
  Cat cat = Cat();
  cat.makeSound();

 TextDocument textDocument = TextDocument();
 textDocument.title = "document1";
 print(textDocument.title);
 textDocument.Author= "r.k singh";
 print(textDocument.Author);

 Spreadsheet spreadsheet = Spreadsheet();
 spreadsheet.title = "spreadsheet1";
 print(spreadsheet.title);
 print(spreadsheet.Author= "s.p shah");

 CreditCard creditCard = CreditCard();
 creditCard.processPayment(17000);
 Cash cash = Cash();
 cash.processPayment(5000);

 EmailLogin emailLogin = EmailLogin();
 emailLogin.validateCredentials("test@gmail.com", "12241326");
 SocialLogin socialLogin = SocialLogin();
 socialLogin.validateCredentials("@twitter", "12241326");

 Button button = Button();
 button.render();
 Label label = Label();
 label.render();  

 Circle circle2 = Circle();
 circle2.calculateArea();
 circle2.calculatePerimeter();
 Rect rect = Rect();
 rect.calculateArea();
 rect.calculatePerimeter();

 GetRequest getRequest = GetRequest();
 getRequest.sendData("https://studiogo.tech/student/studentapi/getProducts.php");

 PostRequest postRequest = PostRequest();
 postRequest.sendData("https://studiogo.tech/student/studentapi/getProducts.php");
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
// Payment Method with Abstract Process:
abstract class PaymentMethod
{
  processPayment(int amount);
}
class CreditCard extends PaymentMethod
{

  processPayment(int debitAmount)
  {
    int cardLimit = 80000;
    void creditcard_transaction()
    {
      
      cardLimit = cardLimit-debitAmount;
      print(cardLimit);
    }

  }
}
class Cash extends PaymentMethod
{
  processPayment(int amount)
  {
    print(amount);
  }
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
// Game Character with Abstract Attack:
abstract class GameCharacter
{
  String?name;
  int ? health;
}
class Warrior extends GameCharacter
{
  attack(){}
}
class Mage extends GameCharacter
{
  attack(){}
}
// Login with Abstract Validation:
abstract class Login
{
validateCredentials(String username, String password);
}
class EmailLogin extends Login
{
  validateCredentials(String username, String password)
  {
    if(username.contains("@") && username.contains(".") && password.length>=6){
      print(true);
    }
    else{
      print("false");
    }
  }
}
class SocialLogin extends Login
{
  validateCredentials(String username, String password)
  {
   if (username.startsWith('@') && username.length >= 3 && password.length >= 6) 
    {
      print("true") ;
    } 
    else {
      print("false");
    }
  }  
}
abstract class UIElement
{
  render();
}
class Button extends UIElement
{
  render(){
   
    print("click me");
  }
}
class Label extends UIElement
{
  render(){
    print("Lable: enter your email");

  }
}
// Shape with Perimeter Calculation :
abstract class SHAPE
{
  calculateArea();
  calculatePerimeter();
}
class Circle extends SHAPE {
  double radius = 20.0;
   calculateArea() {
    print( 3.14 * radius * radius );
  }
   calculatePerimeter() {
    print( 2 * 3.14 * radius);
  }
}

class Rect extends SHAPE {
  double width = 10.5;
  double height = 20.5;

   calculateArea() {
    print(width * height);
  }
   calculatePerimeter() {
    print(2 * (width + height));
  }
}
//  Network Request with Abstract Send:
abstract class NetworkRequest {
   sendData(dynamic data);
}

class GetRequest extends NetworkRequest {
   sendData(dynamic data) 
   {
    print('Sending data via GET request: $data');
   }
}

class PostRequest extends NetworkRequest {
  
   sendData(dynamic data) 
   {
    print('Sending data via POST request: $data');
   }
}