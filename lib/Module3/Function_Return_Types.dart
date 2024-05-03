void main()
{
 var Greet =greet("ram");
 print(Greet);

 var area =calculateArea(4.5,5.4);
 print(area);

 var even = isEven(12);
 print(even);

  print('Addition: ${add(10, 20)}');
  print('Subtraction: ${subtract(10,20)}');
  print('Multiplication: ${multiply(10,20)}');
   try {
    print('Division: ${devide(10,20)}');
  } catch (e) {
    print(e);
  }
  print(celsiusToFahrenheit(37.5));
  print(getStringLength());
   String text = "Hello world hello dart World hello world";
   Map<String, int> result = analyzeText(text);
}
// 1. Greeting Function with Return:
greet(String name)
{
 return "hello $name";
}

// 2. Area Calculator Returning Double:
double calculateArea(double length,double height)
{
  double rect_area = length*height;
  return rect_area;
}
// 3.Checking Even or Odd (Boolean Return): 
bool isEven(int number) 
{
  return number % 2 == 0;
}
// 4. Simple Calculator with Multiple Returns (Optional):
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
// 5. Convert Celsius to Fahrenheit (Returning String):
double celsiusToFahrenheit(double temp)
{
var result = temp* 9/5 + 32;
return result;
}
// 7. Length of a String:
String getStringLength()
{
  String str = "flexion";
  String length = str.length.toString();
  return length;
}
// 8. Simple Text Analyzer:
Map<String, int> analyzeText(String text) 
{
  Map<String, int> wordCount = {};

  // Split the text into words
  List<String> words = text.toLowerCase().split(RegExp(r'\W+'));

  // Count occurrences of each word
  for (var word in words) {
    if (word.isNotEmpty) {
      wordCount[word] = (wordCount[word] ?? 0) + 1;
    }
  }
  return wordCount;
}  