void main()
{
Person person = Person();
person._age = 43;
print(person.age);

Circle circle = Circle();
circle._redius = 5.6;
print(circle._redius);

Rectangle rectangle = Rectangle();
rectangle._width = 23;
rectangle._height= 56;
print("Perimeter: ${rectangle.perimeter}");

BankAccount bankAccount = BankAccount();
bankAccount._balance = 7000.0;
print("Initial balance ${bankAccount._balance}");
print("After deposite ${bankAccount.deposite(3000.0)}");
print("After Withdraw ${bankAccount.withdraw(2000.0)}");

Student student = Student();
print("initial Grade ${student._grade}");
student._grade = 70;
print("updated Grade ${student._grade}");
}
// Simple Person Class with Encapsulation:
class Person
{
  String name = "rohit";
  int _age = 34;

  set age(int new_age)
  {
  _age = new_age;
  }
 int get age{
   return _age;
  }
}
//  Circle with Radius and Calculated Area:
class Circle
{
  double _redius = 3.4;
  set redius(double new_redius){
    _redius = new_redius;
  }
 double get redius {
    return _redius;
  }
}
// Rectangle with Width, Height, and Calculated Perimeter:
class Rectangle
{
double _height = 45.0;
double _width = 34.0;
set newheight(double new_height,)
{
   _height = new_height;
}
double get newheight
{
  return _height;
}
set newWidth(double new_width,)
{
   _width = new_width;
}
double get newWidth
{
  return _width;
}
 double get perimeter 
  {
   return 2 * (_width + _height);
  } 
}
//  Bank Account with Balance and Validation:
class BankAccount
{
  double _balance = 5000.0;
  set new_balance(double new_value)
  {
    _balance = new_value;
  }
  double get new_balance {
    return _balance;
  }
  double deposite(double amount)
  {  
  _balance = _balance + amount;
  return _balance;
  }

 double withdraw(double amount)
  {
    _balance = _balance - amount;
    return _balance;
  }
}
class Student
{
  String name = "joy";
  int _grade = 50;
  set grade(int new_grade)
  {
    _grade = new_grade;
  }
 int get grade
  {
  return _grade;
  }
  String calculateLetterGrade() {
    if (_grade >= 90) {
      return 'A';
    } else if (_grade >= 80) {
      return 'B';
    } else if (_grade >= 70) {
      return 'C';
    } else if (_grade >= 60) {
      return 'D';
    } else {
      return 'F';
    }
  }
}