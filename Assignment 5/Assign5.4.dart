//Q4: Write a program in Dart to reverse a String using function.

void main() {
  String input = 'Dart is Flutter programming Language!';
  String reversed = revString(input);
  print('Original string: $input');
  print('Reversed string: $reversed');
}


//create a function for reversed the string
String revString(String input) {
  String reversedString = '';
  for (int i = input.length - 1; i >= 0; i--) {
    reversedString += input[i];
  }
  return reversedString;
}
