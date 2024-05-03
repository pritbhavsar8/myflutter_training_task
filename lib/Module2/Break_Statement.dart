import 'dart:io';

void main(){
// 1. Early Exit from Menu Loop:
   bool exit = false;
   while (!exit) 
   {
    print('Menu:');
    print('1 - View Products');
    print('2 - Exit');
    stdout.write('Choose an option: ');
    String? input = stdin.readLineSync();
    if(input=="2"){
      print("exit from menu");
      break;
    }
  }
// 2. Even Number Finder (First Occurrence):
 List<int> number = [1,2,3,4,5,6,7,8,9,10];
  for(var i =0; i<number.length;i++){
    if(number[i]%2==0){
      // print(number[i]);
      if(number[i]==4){
        
        break;
        
      }
    }
  }
   // 3. Password Validation (Maximum Attempts):
  int maxAttempts = 3;
  int attempts = 0;
  do {
    stdout.write("Enter your password: ");
    String? password = stdin.readLineSync();
  
    if (password != null && password.length >= 6) {
      print("Password accepted.");
      break; // Exit the loop if password meets criteria
    } else {
      print("Password must be at least 6 characters long. Please try again.");
      attempts++;
  
    }
  } while (attempts < maxAttempts);
  
  if (attempts == maxAttempts) {
    print("your attempts finished. Exiting...");
  }
  // 5. Prime number check
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
  //6. Palindrome Check with Break:
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
  // 7 Armstrong Number Check :
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
//  8 Text Character Counting with Early Break:
  stdout.write("Enter a string: ");
  String? str = stdin.readLineSync();

  if ( str!.isEmpty) {
    print("Empty input. Please enter a non-empty string.");
    return;
  }

  Map<String, int> frequencyMap = {};

  for (int i = 0; i < str.length; i++) {
    String character = str[i];

    // Check if the character is already in the map
    if (frequencyMap.containsKey(character)) {
      // Increment the count if it exists
      frequencyMap[character] = frequencyMap[character]! + 1;
    } else {
      // Otherwise, add it to the map with count 1
      frequencyMap[character] = 1;
    }
  }
  // Print the frequencies
  print("\nCharacter frequencies:");
  frequencyMap.forEach((key, value) {
    print("$key: $value");
  });

// 9. Menu Loop with Hotkey Exit:
  bool out = false;
  while (!out) {
    // Display menu options
    print("\nMenu:");
    print("1 - View Products");
    print("q - Exit");
    stdout.write("Please enter your choice: ");

    // Read user input
    String? input = stdin.readLineSync();

    // Process user input
    if (input == "1") {
      print("You selected: View Products");
      // Call function to view products
    } else if (input?.toLowerCase() == "q") {
      print("Exiting...");
      out = true; // Set exit flag to true to break out of the loop
    } else {
      print("Invalid choice. Please try again.");
    }
  }
}