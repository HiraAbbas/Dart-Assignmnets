//Q3: Write a program in a dart that implements the Pythagorean theorem using function.
//The Pythagorean theorem is a fundamental theorem in geometry that relates to the three sides
//of a right triangle. It states that the square of the length of the
//hypotenuse (the side opposite the right angle) is equal to the sum of the squares
//of the lengths of the other two sides.In mathematical notation, the Pythagorean theorem
//can be expressed as:
// c = √a^2 + b^2
// a = √(c^2 - b^2) or
// b = √(c^2 - a^2)
import 'dart:math';
import 'dart:io';

void main() {
  print("\n");
  stdout.writeln(
      'Using Pythagorean theorem Find any side of Right Angle triangle by choosing options');
  option();
}

pythagoreanTheoremC() {
  stdout.write('Put value of side a:\n');
  String inputA = stdin.readLineSync() ?? '';
  stdout.write('Put value of side b:\n');
  String inputB = stdin.readLineSync() ?? '';
  double a = double.tryParse(inputA) ?? 0;
  double b = double.tryParse(inputB) ?? 0;
  if (a > 0 && b > 0) {
    print("\n");
    double c = sqrt((a * a) + (b * b));
    print(
        'The Hypotenus "C" of Right Angle Triangle is: ${c.toStringAsFixed(3)}');
    print("\n");
  } else {
    print("Value of a and b must be positive");
    print("\n");
  }
}

pythagoreanTheoremA() {
  stdout.write('Put value of side b:\n');
  String inputB = stdin.readLineSync() ?? '';
  stdout.write('Put value of side c:\n');
  String inputC = stdin.readLineSync() ?? '';
  double b = double.tryParse(inputB) ?? 0;
  double c = double.tryParse(inputC) ?? 0;
  if (c > b) {
    print("\n");
    double a = sqrt((c * c) - (b * b));
    print('The Side "A" of Right Angle Triangle is: ${a.toStringAsFixed(3)}');
    print("\n");
  } else {
    print("c value must be greater than b");
    print("\n");
  }
}

pythagoreanTheoremB() {
  stdout.write('Put value of side a:\n');
  String inputA = stdin.readLineSync() ?? '';
  stdout.write('Put value of side c:\n');
  String inputC = stdin.readLineSync() ?? '';
  double a = double.tryParse(inputA) ?? 0;
  double c = double.tryParse(inputC) ?? 0;
  if (c > a) {
    print("\n");
    double b = sqrt((c * c) - (a * a));
    print('The Side "B" of Right Angle Triangle is: ${b.toStringAsFixed(3)}');
    print("\n");
  } else {
    print("c value must be greater than b");
    print("\n");
  }
}

void option() {
  String input;
  do {
    stdout.write('Option 1: Find Hypotenuse (c)\n');
    stdout.write('Option 2: Find side a\n');
    stdout.write('Option 3: Find side b\n');
    stdout.write('Enter "exit" for Exit\n');
    stdout.write('Please select an option:\n');

    input = stdin.readLineSync() ?? '';

    switch (input) {
      case '1':
        stdout.write('Option 1 selected Find side "c"\n');
        pythagoreanTheoremC();
        break;
      case '2':
        stdout.write('Option 2 selected Find side "a"\n');
        pythagoreanTheoremA();
        break;
      case '3':
        stdout.write('Option 3 selected Find side "b"\n');
        pythagoreanTheoremB();
        break;
      case 'exit':
        stdout.write('Bye Bye \n');
        break;
      default:
        stdout.write('Invalid option\n');
        break;
    }
  } while (input != 'exit');
}
