import 'dart:io';
import 'dart:math';

void main(){
   int choice;

  do {
    displayMenu();
     stdout.write("Enter your choice: ");
     choice = int.parse(stdin.readLineSync()!);
    // Handling user choice
    switch (choice) {
      case 1:
        print("Viewing Products...");
        // Implement logic for viewing products
        break;
      case 2:
        print("Exiting...");
        break;
      default:
        print("Invalid choice. Please enter a valid option.");
    }
  } while(choice != 2);

//  2. Coin Toss Simulation (Guaranteed First Toss):
  Random random = Random();
  String result;
  do {
    // Simulating a coin toss
    result = tossCoin(random);

    // Displaying the result
    print("The coin toss resulted in: $result");

    // Asking the user if they want to continue tossing
    stdout.write("\nDo you want to toss the coin again? (yes/no): ");
    String? input = stdin.readLineSync();

    // Checking user input to continue or not
    if (input?.toLowerCase() != 'yes') {
      break;
    }
  } 
  while (true);

// 3. Guessing Game (Minimum One Attempt):
   Random ran = Random();
  int targetNumber = ran.nextInt(10) + 1; // Generating random number between 1 and 10
  int guess;
  bool correctGuess = false;

  do {
    // Getting user's guess
    stdout.write("Guess the number between 1 and 10: ");
    guess = int.parse(stdin.readLineSync()!);

    // Checking if the guess is correct
    if (guess == targetNumber) {
      print("Congratulations! You guessed the correct number.");
      correctGuess = true;
    } else {
      print("Sorry, that's not the correct number. Try again!");
    }
  } while (!correctGuess);

  // 4. Simple Validation Loop:
   int age;
  do {
    
    stdout.write("Enter your age: ");
    age = int.parse(stdin.readLineSync()!);

    // Validating the age
    if (age < 0) {
      print("Age must be a non-negative integer. Please try again.");
    }
  } while (age < 0);
  print("Your age is: $age");

// 5. Text Character Counting (Single Pass):
   stdout.write('Enter a string:');
   String ?input = stdin.readLineSync();

  // Initialize maps to store frequency of characters
  Map<String, int> lowercaseFreq = {};
  Map<String, int> uppercaseFreq = {};

  // Convert input string to list of characters
  List<String>? characters = input?.split('');

  int index = 0;
  do {
    // Get current character
    String currentChar = characters![index];

    // Check if current character is a letter
    if (currentChar.toLowerCase() != currentChar.toUpperCase()) {
      // Increment frequency for lowercase character
      if (currentChar == currentChar.toLowerCase()) {
        lowercaseFreq[currentChar] = (lowercaseFreq[currentChar] ?? 0) + 1;
      }
      // Increment frequency for uppercase character
      else {
        uppercaseFreq[currentChar] = (uppercaseFreq[currentChar] ?? 0) + 1;
      }
    }

    index++;
  } while (index < characters.length);

  // Print frequencies for lowercase characters
  print('Frequency of lowercase characters:');
  lowercaseFreq.forEach((char, count) {
    print('$char: $count');
  });

  // Print frequencies for uppercase characters
  print('Frequency of uppercase characters:');
  uppercaseFreq.forEach((char, count) {
    print('$char: $count');
  });

  // 6. Simple Password Strength Check (Minimum One Character):
   String password;

  do {
    stdout.write('Enter your password: ');
    password = stdin.readLineSync()!.trim();

    if (password.isEmpty) {
      print('Password must contain at least one character.');
    }
  } while (password.isEmpty);

  print('Password set successfully!');

  // 7. Number Guessing Game (One or More Attempts):
   Random r = Random();
  int randomNumber = random.nextInt(100) + 1;

  int userGuess;
  bool guessedCorrectly = false;

  do {
    // Prompt the user to guess the number
    stdout.write('Guess the number (between 1 and 100): ');
    String ? input = stdin.readLineSync();
    
    try {
      userGuess = int.parse(input!);

      if (userGuess < 1 || userGuess > 100) {
        print('Please enter a number between 1 and 100.');
      } else {
        // Check if the guess is correct
        if (userGuess == randomNumber) {
          print('Congratulations! You guessed the correct number: $randomNumber');
          guessedCorrectly = true;
        } else {
          if (userGuess < randomNumber) {
            print('Try a higher number.');
          } else {
            print('Try a lower number.');
          }
        }
      }
    } catch (e) {
      print('Invalid input. Please enter a valid number.');
    }
  } while (!guessedCorrectly);
 
//  8. Factorial Calculation (Handle Zero):
  int ?number;
  int factorial = 1;

  do 
  {
    stdout.write('Enter a non-negative integer: ');
    String ? input = stdin.readLineSync();

    try {
      number = int.parse(input!);

      if (number < 0) {
        print('Please enter a non-negative integer.');
      }
    } catch (e) {
      print('Invalid input. Please enter a valid non-negative integer.');
    }
  } while (number == null || number < 0);

  // Calculate factorial
  for (int i = 2; i <= number; i++) {
    factorial *= i;
  }

  print('$number! = $factorial');

}

void displayMenu() {
  print("\nMenu:");
  print("1 - View Products");
  print("2 - Exit");
}
String tossCoin(Random random) {
  // Generating a random number (0 or 1)
  int randomNumber = random.nextInt(2);

  // Assigning 'heads' for 0 and 'tails' for 1
  return (randomNumber == 0) ? 'Heads' : 'Tails';
}