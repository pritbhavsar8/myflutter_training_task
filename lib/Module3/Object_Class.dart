void main()
{
Circle c = Circle();
c.calculate_area();
Rectangle r = Rectangle();
print("area of rect ${r.calculateArea()}");

CartItem cartItem = CartItem();
print(cartItem.product);
print(cartItem.price);
print(cartItem.quantity);

var obj = circle();
print("area of circle ${obj.calculateArea()}");
var obj2 = rectangle();
print("area of rect ${obj2.calculateArea()}");

}
//  Circle with Properties and Methods:
class Circle
{
  double radius = 4.5;
  double pi = 3.14;
  calculate_area()
  {
     double area = pi*radius*radius;
     double circumference = 2*pi*radius;
     print("Area of circle $area");
     print("Circumference of circle $circumference");
  }
}
// Rectangle with Inheritance:
abstract class Shape
{
  calculateArea();
}
class Rectangle extends Shape
{
  double width = 20.0;
  double height = 44.5;
  double calculateArea()
  {
    double area = width*height;
    return area;
  }
}
// Simple Bank Account with Class:


// Simple Shopping Cart with Class:
class CartItem
{
  String product = "iphone";
  double price = 60000;
  int quantity = 1;
}
// Simple Shape Hierarchy (Optional):
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