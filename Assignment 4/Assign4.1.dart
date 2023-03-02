//Q1: Write a program to find the factorial of
//any number entered using for loop.

void main() {
  int n = 5;
  int f = 1;

  for (int i = 1; i <= n; i++) {
    f = f * i;
  }
  print("Factorial of number $f");
}
