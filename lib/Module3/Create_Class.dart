void main()
{
var obj = person("rahul" , 34);
print(obj.name);
print(obj.age);
print(obj.greet()); 
Rectangle rect = Rectangle();
rect.calculateArea();
rect.calculatePerimeter();
Dog dog = Dog("tom", "pitbull");
print(dog.age);
print(dog.name);
print(dog.breed);

BankAccount bankaccount = BankAccount();
  print("After Deposite:" + bankaccount.deposite().toString()) ;
  print("After Withdraw:" + bankaccount.Withdrewal().toString()) ;
  print(bankaccount.AccountInfo()) ;
  var obj2 = circle();
  print("area of circle ${obj2.calculateArea()}");
  var obj3 = rectangle();
  print("area of rect ${obj3.calculateArea()}");

  Book book = Book();
  book._yearPublished = 2019;
  print(book._yearPublished);
  book.title = "The Secret";
  print(book.title);
  book.author = "Rhonda Byrne";
  print(book.author);
}
// Simple Person Class:
// Class with Methods:
class person
{
  String name;
  int age;
  person(this.name,this.age);

   greet()
  {
   String name = "sagar";
    return "hello $name";
  }
}
//  Rectangle with Properties and Methods:
class Rectangle
{
  double width = 20.0;
  double height = 34.0;
  calculateArea()
  {
    double area = width*height;
    print(area);
  }
  calculatePerimeter()
  {
    double peri = 2*(width+height);
    print(peri);
  }
}
// Dog with Custom Constructor (Optional):
class Dog
{
  String name;
  int age;
  String breed;
  Dog(this.name,this.breed,[this.age=1]);
}
// Simple Bank Account with Class:

class BankAccount
{
  String  account_no = '';
  int  balance = 5000;
 int deposite(){
    int addamount = 3000;
    int deposite_amount = balance+ addamount ;
    return deposite_amount;
  }
  int Withdrewal(){
     int withdraw_amount = 2000;
    int withdrew = deposite() - withdraw_amount;
    return withdrew;
  }
  int AccountInfo(){
   account_no = "1234567890";
   print(account_no);
   int totalbalance = Withdrewal();
   return totalbalance;
  }
}
// Shape Hierarchy with Inheritance:
abstract class shape
{
  calculateArea();
}
class circle extends shape
{
  double pi = 3.14;
  double r = 34.56;
  calculateArea()
  {
    double area = pi*r*r;
    print(area);
  }
}
class rectangle extends shape
{
  int width = 20;
  int height = 34;
  calculateArea()
  {
    int area = width*height;
    print(area);
  }
}
// Book with Encapsulation:
class Book
{
  String ? title;
  String ? author;
  int _yearPublished = 2016;
  set yearPublished(int change_yearPublish)
  {
    _yearPublished = change_yearPublish;
  }
  int get yearPublished
  {
    return _yearPublished;
  }
}