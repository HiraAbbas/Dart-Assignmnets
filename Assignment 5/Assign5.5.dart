//Q5: Write a program in Dart to signup user by using username, email & password
//as required fields while  phoneNumber is optional using function, call this
// function at least 3 times to create different users. Now create another function named as
//loginUser and then try to login with correct & incorrect credentials
import 'dart:io';

void main() {
  print("\n");
  List<Map<String, dynamic>> users = [];

  for (int i = 1; i < 4; i++) {
    Map<String, dynamic> user = signUpUser();
    users.add(user);
    print('Sign up $i');
    print("\n");
  }

  bool loggedIn = false;
  Map<String, dynamic>? currentUser;

  while (!loggedIn) {
    currentUser = logInUser(users);

    if (currentUser != null) {
      loggedIn = true;
      print('Welcome, ${currentUser['username']}!');
    } else {
      print('Invalid username or password. Please try again.');
    }
  }
}

Map<String, dynamic> signUpUser() {
  stdout.write('Please enter your username: ');
  String username = stdin.readLineSync()!;

  stdout.write('Please enter your email address: ');
  String email = stdin.readLineSync()!;

  stdout.write('Please enter your password: ');
  String password = stdin.readLineSync()!;

  stdout.write('Please enter your phone number (optional): ');
  String? phoneNumber = stdin.readLineSync();

  Map<String, dynamic> user = {
    'username': username,
    'email': email,
    'password': password,
  };

  if (phoneNumber != null && phoneNumber.isNotEmpty) {
    user['phoneNumber'] = phoneNumber;
  }

  print("\n");
  return user;
}

Map<String, dynamic>? logInUser(List<Map<String, dynamic>> users) {
  stdout.writeln('Login');
  print("\n");
  stdout.write('Please enter your username: ');
  String username = stdin.readLineSync()!;

  stdout.write('Please enter your password: ');
  String password = stdin.readLineSync()!;

  for (int i = 0; i < users.length; i++) {
    Map<String, dynamic> user = users[i];

    if (user['username'] == username && user['password'] == password) {
      return user;
    }
  }

  return null;
}
