import 'dart:io';

void main()
{
  // AGE checked
  stdout.write("Enter your age:");
  int age = int.parse(stdin.readLineSync()!);
  if(age>=18){
    print("eligible for vote and drive");
  }
  else{
    print("Not eligible for vote and drive");
  }
  // 2. Number Range Check (Logical OR):
  stdout.write("Enter number:");
  int number = int.parse(stdin.readLineSync()!);
  if(number>=10 || number<=20){
    print("valid");
  }
  else{
    print("not valid");
  }
//  3. Login Validation (Combined Operators):
  stdout.write("Enter Username:");
  String ? username = stdin.readLineSync();
  stdout.write("Enter Password:");
  int password = int.parse(stdin.readLineSync()!);

  if(username=="admin" && password == 123)
  {
    print("login successfully");
  }
  else if(username=="admin"||password==234)
  {
    print("password not found");
  }
  else if(username=="test"||password==123)
  {
    print("username not found");
  }
  else{
    print("login failed");
  }
//  Vowel or Consonant with Negation (!):
  stdout.write("Enter any one of a to z:");
  String ? alphabet = stdin.readLineSync();
  alphabet!.toLowerCase();
  if(alphabet == "a" || alphabet =="e"|| alphabet =="i"||alphabet =="o"||alphabet =="u"){
    print("Vowels");
  }
  else{
    print("Consonant");
  }
//   Login Attempt with Maximum Tries:
  String uname = "user";
  String Password = "123";

  // Set the maximum number of attempts
  int maxAttempts = 3;
  int attempts = 0;

  // Perform login attempts
  while (attempts < maxAttempts) {
    stdout.write("Enter your username: ");
    String enteredUsername = stdin.readLineSync()!;

    stdout.write("Enter your password: ");
    String enteredPassword = stdin.readLineSync()!;

    if (enteredUsername == uname && enteredPassword == Password) {
      print("Login successful!");
      break;
    } else {
      attempts++;
      int remainingAttempts = maxAttempts - attempts;
      if (remainingAttempts > 0) {
        print("Incorrect username or password. $remainingAttempts attempts remaining.");
      } else {
        print("You have exceeded the maximum number of login attempts. Please try again later.");
      }
    }
  }
// 7. Multiple Choice Question with Negation:
  print("Who is the PM of India?");
  print("A. Modi");
  print("B. Rahul");
  print("C. Manmohan");

  stdout.write("Enter your answer (A, B, or C): ");
  String ?userAnswer = stdin.readLineSync()!.toUpperCase();

  String correctAnswer = "A";

  if (userAnswer != correctAnswer) {
    print("Sorry, your answer is incorrect. The correct answer is $correctAnswer.");
  } else {
    print("Congratulaton your answer is correct");
  }

// 9. Password Strength Check (Combined Operators):

  stdout.write("Enter your password: ");
  String Pass = stdin.readLineSync()!;

  // Check password strength
  bool isStrong = checkPasswordStrength(Pass);

  // Provide feedback on password strength
  if (isStrong) {
    print("Strong password!");
  } else {
    print("Weak password. Please consider a longer password with a mix of uppercase, lowercase, numbers, and special characters.");
  }
}

bool checkPasswordStrength(String password) {
  // Check length
  if (password.length < 8) {
    return false;
  }

  // Check for uppercase, lowercase, numbers, and special characters
  bool hasUppercase = false;
  bool hasLowercase = false;
  bool hasNumber = false;
  bool hasSpecialChar = false;

  for (int i = 0; i < password.length; i++) {
    String char = password[i];
    if (char == char.toUpperCase() && char != char.toLowerCase()) {
      hasUppercase = true;
    } else if (char == char.toLowerCase() && char != char.toUpperCase()) {
      hasLowercase = true;
    } else if (int.tryParse(char) != null) {
      hasNumber = true;
    } else {
      hasSpecialChar = true;
    }
  }
  // Check if all criteria are met
  return hasUppercase && hasLowercase && hasNumber && hasSpecialChar;


}