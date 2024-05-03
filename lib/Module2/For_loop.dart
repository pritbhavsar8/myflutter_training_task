import 'dart:core';

import 'dart:io';

void main()
{
  // 1. Printing Numbers (Basic for Loop):
  for(var i = 1; i<=10; i++)
  {
    print(i);
  }
//   // 2. Printing Numbers in Reverse:
  for(var i = 10; i>=1; i--)
  {
    print(i);
  }
//  3. Sum of Natural Numbers:
stdout.write("Enter number");
int num = int.parse(stdin.readLineSync()!);
 int sum = calculateSum(num);
 print(sum);
//
// // 4. Multiplication Table:
  stdout.write("enter the n:");
  int n = int.parse(stdin.readLineSync()!);
  for(var i = 1; i<= 10; i++)
  {
    print("$n x $i = ${n! * i}");
  }
//  5. Even or Odd Numbers:dart
  stdout.write("enter the N:");
  int N = int.parse(stdin.readLineSync()!);
  for(var i = 1; i<= N; i++)
  {
    if(i%2==0){
      print("even number $i");
    }
    else{
      print("odd number $i");
    }
  }
 // 6. Simple Text Statistics:
  stdout.write("enter your name:");
  String ? name = stdin.readLineSync();
  for(var i = 0; i<=name!.length; i++){
    print(name[i]);
  }
//  7. Factorial Calculation:
  stdout.write("enter a non-nagative number:");
  int  number  = int.parse(stdin.readLineSync()!);
  if(number<0){
    print('Please enter a non-negative number.');
    return;
  }
  int facto = 1;
  for (int i = 1; i <= number; i++) {
    facto  *= i;
  }
  print("$number!= $facto");
  
// 8. Array Sum with for Loop:
List<int> a = [1,2,3,4,5,6,7,8,9,10];
int add = 0;
for(var i = 0; i< a.length; i++){
  add +=a[i];
}
print(add);


 // 9. String Reversal:
  stdout.write("enter your name:");
   String ? str = stdin.readLineSync();
  // String reversed = '';
  for (var i = str!.length - 1; i >= 0; i--) {
    print(str[i]) ;
  }
  // print("reverse string = $reversed");

}
int calculateSum(int n)
{
  int sum = 0;
  for (int i = 1; i <= n; i++) {
    sum =sum + i;
  }
  return sum;
}