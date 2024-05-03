import 'dart:io';
import 'dart:math';

void main()
{
//  7. Triangle Type Check:
  stdout.write("Angle A:");
  int  angleA = int.parse(stdin.readLineSync()!);
  stdout.write("Angle B:");
  int angleB = int.parse(stdin.readLineSync()!);
  stdout.write("Angle C:");
  int angleC = int.parse(stdin.readLineSync()!);
  if(angleA==angleB && angleB==angleC && angleC==angleA){
    print("equilateral Trangle");
  }
  else if(angleA==angleB && angleB!=angleC && angleC!=angleA){
    print("isosceles Trangle");
  }
  else if (angleA!=angleB && angleB!=angleC && angleC!=angleA){
    print("scalene Trangle");
  }

//  6. Vowel or Consonant Check (Enhanced):
  stdout.write("Enter any one of AtoZ:");
  String ? alphabet = stdin.readLineSync();
  alphabet?.toLowerCase();
  if(alphabet=="a" || alphabet=="e"|| alphabet=="i"||alphabet=="o"||alphabet=="u"){
    print("Vowels");
  }
  else{
    print("Consonant");
  }
 // 8. Multiple Choice Question:
  print("Who is the PM of India?");
  print("A. Modi");
  print("B. Rahul");
  print("C. Manmohan");

  stdout.write("Enter your answer (A, B, or C): ");
  String ?userAnswer = stdin.readLineSync()!.toUpperCase();

  String correctAnswer = "A";

  if (userAnswer == correctAnswer) {
    print("Congratulations! Your answer is correct.");
  } else {
    print("Sorry, your answer is incorrect. The correct answer is $correctAnswer.");
  }

//  10. Number Guessing Game:
  Random random = Random();
  int randomNumber = random.nextInt(100) + 1;

  int attempts = 0;
  int guess = 0;

  print("I've picked a number between 1 and 100. Can you guess what it is?");

  // Continue until the user guesses correctly
  while (guess != randomNumber) {
    stdout.write("Enter your guess: ");
    String input = stdin.readLineSync() ?? '';

    try {
      guess = int.parse(input);

      // Check if the guess is within the valid range
      if (guess < 1 || guess > 100) {
        print("Please enter a number between 1 and 100.");
        continue;
      }

      attempts++;

      // Provide hints
      if (guess < randomNumber) {
        print("Higher!");
      } else if (guess > randomNumber) {
        print("Lower!");
      } else {
        print("Congratulations! You've guessed the correct number in $attempts attempts.");
      }
    } catch (e) {
      print("Invalid input. Please enter a valid number.");
    }
  }
}