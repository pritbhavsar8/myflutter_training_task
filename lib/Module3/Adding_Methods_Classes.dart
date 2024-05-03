void main()
{
Circle c = Circle();
c.calculate_area();
c.calculate_circumference();

Rectangle rect = Rectangle();
rect.calculateArea();
rect.calculatePerimeter();

BankAccount bankaccount = BankAccount();
  print("After Deposite:" + bankaccount.deposite().toString()) ;
  print("After Withdraw:" + bankaccount.Withdrewal().toString()) ;
  print(bankaccount.AccountInfo()) ;

  var obj1 = circle();
  print("area of circle ${obj1.calculateArea()}");
  var obj2 = rectangle();
  print("area of rect ${obj2.calculateArea()}");
  var obj3 = Tringle();
  print("area of rect ${obj3.calculateArea()}");
}
//  Circle with Area and Circumference Calculation:
class Circle
{
  double radius = 4.5;
  double pi = 3.14;
  calculate_area()
  {
     double area = pi*radius*radius;
     
     print("Area of circle $area");
     
  }
  calculate_circumference()
  {
    double circumference = 2*pi*radius;
    print("Circumference of circle $circumference");
  }
}
// Rectangle with Area and Perimeter Calculation (Optional):
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
// Simple Bank Account with Methods:
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
// Shape Hierarchy with Area Calculation:
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
class Tringle extends shape
{
 int base = 20;
 int height= 30;
  calculateArea() 
  {
    double area = 0.5*base*height;
  }
}