//Q5: Write a program to find sum of all odd numbers between 1 to 100.
void main() {
  int result = 0;
  for (int i = 1; i <= 100; i++) {
    if (i % 2 != 0) {
      result = result + i;
    }
  }
  print("the Sum of all Odd numbers between 1 to 100 is $result");
}
