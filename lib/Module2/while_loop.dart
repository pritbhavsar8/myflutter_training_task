import 'dart:io';
import 'dart:math';

void main()
// 1. Countdown Timer:
{
  stdout.write('Enter the starting value for the countdown timer: ');
  int startingValue = int.parse(stdin.readLineSync()!);
  
  if (startingValue < 0)
  {
    print('Please enter a non-negative integer.');
    return;
  }
  
  int currentSecond = startingValue;
  while (currentSecond >= 0)
  {
    print('Remaining seconds: $currentSecond');
    sleep(Duration(seconds: 1));
    currentSecond--;
  }
  print('Countdown complete!');


//  Menu Loop:
  bool exit = false;
  while (!exit) {
    print('Menu:');
    print('1 - View Products');
    print('2 - Exit');
    stdout.write('Choose an option: ');
    String? input = stdin.readLineSync();

    switch (input) {
      case '1':
        print('Viewing Products...');
        // Implement logic for viewing products here
        break;
      case '2':
        print('Exiting...');
        exit = true;
        break;
      default:
        print('Invalid option. Please try again.');
    }
  }

//  4. Coin Toss Simulation (Multiple Tosses):
  Random random = Random();
  int tosses = 0;

  while (tosses <= 0) {
    print('Enter the number of coin tosses: ');
    String? input = stdin.readLineSync();
    tosses = int.tryParse(input!) ?? 0;
    if (tosses <= 0) {
      print('Please enter a valid positive integer.');
    }
  }

  int headsCount = 0;
  int tailsCount = 0;
  int currentToss = 1;

  while (currentToss <= tosses) {
    int result = random.nextInt(2); // 0 for heads, 1 for tails

    if (result == 0) {
      print('Toss $currentToss: Heads');
      headsCount++;
    } else {
      print('Toss $currentToss: Tails');
      tailsCount++;
    }

    currentToss++;
  }

  print('Total number of tosses: $tosses');
  print('Number of Heads: $headsCount');
  print('Number of Tails: $tailsCount');

  // 5. Palindrome Check:
  stdout.write('Enter a string: ');
  String input = stdin.readLineSync()!;
  
  int start = 0;
  int end = input.length - 1;
  bool isPalindrome = true;
  
  while (start < end) {
    if (input[start] != input[end]) {
      isPalindrome = false;
      break;
    }
    start++;
    end--;
  }
  
  if (isPalindrome) {
    print('The string is a palindrome.');
  } else {
    print('The string is not a palindrome.');
  }
 // 6 Multiplication Table (While Loop):
   stdout.write('Enter a number: ');
   int  n = int.parse(stdin.readLineSync()!);
   int i = 1;
   while(i<=10){
     print("$n x $i = ${n * i}");
     i++;
   }

 // 7. Prime Number Check:
  stdout.write('Enter a number: ');
  int  N = int.parse(stdin.readLineSync()!);
  if (N <= 1) {
    print('The number must be greater than 1.');
    return;
  }

  int divisor = 2;
  bool isPrime = true;

  while (divisor * divisor <= N) {
    if (N % divisor == 0) {
      isPrime = false;
      break;
    }
    divisor++;
  }

  if (isPrime) {
    print('$N is a prime number.');
  } else {
    print('$N is not a prime number.');
  }

  // 8. Armstrong Number Check:
  stdout.write('Enter a number: ');
  int  num = int.parse(stdin.readLineSync()!);
  int originalNumber = num;
  int numDigits = num.toString().length;
  int sum = 0;

  while (num > 0) {
    int digit = num % 10;
    sum += (digit * digit * digit);
    num ~/= 10;
  }

  if (sum == originalNumber) {
    print('$originalNumber is an Armstrong number.');
  } else {
    print('$originalNumber is not an Armstrong number.');
  }

// 9. Fibonacci Sequence Generation:
    stdout.write('Enter a number: ');
    int  number = int.parse(stdin.readLineSync()!);
     int first = 0;
     int second = 1;
     int count = 2;

  if (number >= 1) {
    print('Fibonacci sequence up to $number terms:');
    print(first);
  }

  if (number >= 2) {
    print(second);
  }

  while (count < n) {
    int next = first + second;
    print(next);
    first = second;
    second = next;
    count++;
  }
   // 10. Text Character Counting with Frequency:
  stdout.write('Enter a string: ');
  String str = stdin.readLineSync()!;

  Map<String, int> charFrequency = {};

  int j = 0;
  while (j < str.length)
  {
    String char = str[j];

    // Skip counting spaces
    if (char == ' ') {
      j++;
      continue;
    }

    // Check if the character is uppercase or lowercase
    bool isUpperCase = char.toUpperCase() == char;

    // Convert the character to lowercase for uniformity in counting
    String charLower = char.toLowerCase();

    // Update frequency
    if (charFrequency.containsKey(charLower)) {
      charFrequency[charLower] = charFrequency[charLower]! + 1;
    } else {
      charFrequency[charLower] = 1;
    }

    // Update frequency for uppercase if necessary
    if (isUpperCase && !charFrequency.containsKey(char)) {
      charFrequency[char] = 0;
    }

    j++;
  }
  print('Character frequencies:');
  charFrequency.forEach((key, value) {
    print('$key : $value');
  });
}