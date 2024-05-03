void main()
{
  //1. Working with Numbers:
  int num1 = 20;
  double num2 = 3.4;
  double sum = num1+num2;
  double sub = num1-num2;
  double multi = num1*num2;
  double devide = num1/num2;
  print(sum);
  print(sub);
  print(multi);
  print(devide);
//
  var name;
  name = "prit";
  name= 9;
  name = true;
  name = 6.7;
  print(name);


  var number1 = "34";
  var number2 = "45";
  var total1 = number1+ ""+ number2;
  var total = int.parse(number1) + int.parse(number2);
  print("value of $number1");
  print("value of ${number1.length}");

 Set<String> favcolour = {
   "orange","red","silver","white",
 };
 var addclr= favcolour.add("blue");
 print(addclr);


}