//1 Global Scope: Variables declared outside of any function are considered global variables. They are accessible from anywhere within the Dart file.
// 1. Local vs. Global Variables:
import 'dart:math';

void main()
{
  String name = "Welcome";
 void greetGlobal()
  {
   print(name);
  }
  void greetLocal()
  {
   String local_name = "Hello";
   print(local_name);
  }
  print(outerFunction());
  var x = incrementCounter();
  print(x);
  greet();
  greet(name: "hello");

   print('Addition: ${add(10, 20)}');
   print('Subtraction: ${subtract(10,20)}');
   print('Multiplication: ${multiply(10,20)}');
   print('Division: ${devide(10,20)}');
   generatePassword();
  print(generatePassword()); // Generate a default password of length 10
  print(generatePassword(length: 12)); 
}
// 2. Shadowing Variables in Nested Functions:
outerFunction()
{
  int number1 = 10;
  innerFunction()
  {
    int number2 = 20;
    print(number1);
    print(number2);
  }
}
// 3. Modifying Variables Inside Functions:
int incrementCounter()
{
  int count = 1;
  count++;
  return count;
}
// 4. Function Parameters with Default Values:
greet({String name ="Dart Learner"})
{
  print(name);
}
// 5. Simple Calculator with Multiple Returns (Optional):
add(int a, int b)
{
  var sum = a + b;
  return sum;
}
subtract(int a, int b)
{
  var subtract = a - b;
  return subtract;
}
multiply(int a, int b)
{
  var multiply = a * b;
  return multiply;
}
devide(int a, int b)
{
   if (b == 0) {
    throw ArgumentError('Not Division by zero');
  }
  double devide = a / b;
  return devide;
}
// 6. Simple Password Generator with Scope :
String generatePassword({int length = 10}) {
  const String letters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ";
  const String numbers = "0123456789";
  const String symbols = "!@#\$%^&*()-_+=";

  String characters = letters + numbers + symbols;
  String password = '';

  // Initialize a Random object
  Random random = Random();

  for (int i = 0; i < length; i++) {
    // Generate a random index within the range of available characters
    int index = random.nextInt(characters.length);
    // Append the randomly selected character to the password
    password += characters[index];
  }

  return password;
}