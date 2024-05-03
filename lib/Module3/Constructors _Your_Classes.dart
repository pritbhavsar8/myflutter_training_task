import 'package:myflutter_training_task/Module3/Object_Class.dart';

void main()
{
var obj = person("sagar", 25);
print(obj.name);
print(obj.age);

var obj2 = Person("Bhavin");

var obj3 = Point(2, 3);
print(obj3.x);
print(obj3.y);

var obj4= Rectangle(24.0,34.0);
 print(obj4.width);
 print(obj4.height);

  Circle circle = Circle(23.12);
  print(circle.radius);

  Dog dog = Dog("tom", "pitbull");
  print(dog.age);
  print(dog.name);
  print(dog.breed); 

  Book book = Book("the untouchble", "dr.bhimrao ambedkar");
  print(book.title);
  print(book.Author);
  print(book.yearPublished);
   
  Product product= Product("patek phillipe",150000000); 
  print(product.name);
  print(product.price);
  print(product.description);

  User user = User("pritbhavsar4", "test@gamil.com");
  print(user.username);
  print(user.email);
  print(user.profilePicture);

  Song song = Song("O mahi", "arjit singh");
  print(song.title);
  print(song.Artist);
  print(song.duration);
}


//Simple Person Class with Name and Age:
class person 
{
  String name;
  int age;
  person(this.name,this.age);
}
//  Optional Age with Default Value:
class Person
{
  Person(String name,[int age=0])
  {
     print(name);
     print(age);
  }
  
}
// Point with X and Y Coordinates:
class Point
{
  int x;
  int y;
  Point(this.x,this.y);
}
// Rectangle with Width and Height:
class Rectangle
{
  double width;
  double height;
  Rectangle(this.height,this.width);
}
// Circle with Radius and Optional Color:
class Circle
{
  double radius;
  Circle(this.radius,{String Color="white"});
}
//  Dog with Name, Breed, and Optional Age:
class Dog
{
  String name;
  int age;
  String breed;
  Dog(this.name,this.breed,[this.age=1]);
}
//  Book with Title, Author, and Optional Year Published:
class Book
{
  String title;
  String Author;
  int yearPublished;
  Book(this.title,this.Author,{this.yearPublished=1948});
}
//  Product with Name, Price, and Optional Description:
class Product
{
  String name;
  double price;
  String  description;
  Product(this.name,this.price,{this.description="best Luxury watch in world"});
}
// User with Username, Email, and Optional Profile Picture:
class User
{
  String username;
  String email;
  String profilePicture;
  User(this.username,this.email,{this.profilePicture="default.png"});
}
//  Song with Title, Artist, and Optional Duration:
class Song {
  String title;
  String Artist;
  int duration;
  Song(this.title,this.Artist,{this.duration=0});
}