void main()
{
Person person = Person();
print(person.greet()); 
print("Name: ${person.name}"); 
  print("Age: ${person.age}"); 

  Student student = Student();
 print('student name: ${student.nam}');
 print("person Name: ${student.name}");
 print("Person Age: ${person.age}");
}
// 1. Simple Class and Object Creation:
// 2. Class Methods:
class Person
{
  String? name;
  int ? age;
  Person(){
    name = "sagar";
    age= 24;
  }
   greet()
  {
   String name = "sagar";
    return "hello $name";
  }
}
// 3. Inheritance:
class Student extends Person
{
  String nam = "rahul";
}
// 4. Constructor Overloading:
class person{
 String name;
  int age;
   //Default constructor
  person(this.name, this.age);
}
// class person
//  {
//   String name;
//   int age;

//   // Default constructor
//   person(this.name, this.age);

//   // Named constructor for creating a Person with name only
//   person.withName(this.name) : age = 0;

//   // Named constructor for creating a Person with age only
//   person.withAge(this.age) : name = "";

//   // Named constructor for creating a default Person
  
// }