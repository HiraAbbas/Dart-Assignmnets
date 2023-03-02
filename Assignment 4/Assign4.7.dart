//Q7: Write a program to print Fibonacci Series upto 100 using for loop only.
//output: 0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89
import 'dart:io';

void main() {
  int n = 0;
  int m = 1;
  int sum = 0;
  stdout.write("The Fibonacci Series upto 100: ");
  stdout.write(' $n'); // Print the first two numbers in the series
  stdout.write(', $m');
  for (int i = 0; sum <= 100; i++) {
    sum = n + m; //// Loop through and print the rest of the series up to 100
    n = m;
    m = sum;

    if (sum <= 100) {
      stdout.write(", $sum");
    }
  }
}
