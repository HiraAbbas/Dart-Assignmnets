//Write a program in Dart to calculate power of a certain numbers using function only.

void main() {
  int number = 2;
  int power = 10;
  int result = calculatePower(number, power);
  print('$number raised to the power of $power is $result');
}

int calculatePower(int number, int power) {
  int result = 1;
  for (int i = 1; i <= power; i++) {
    result *= number;
  }
  return result;
}
