//Q4: Write a program to print the following:
//all part 1, 2, 4 and 5

import 'dart:io';

void main() {
  for (int i = 1; i <= 4; i++) {  //  Q4 PART I
    for (int j = 1; j <= 10; j++) {
      stdout.write("*");
    }
    stdout.write('\n');
  }

  for (int k = 1; k <= 6; k++) {  //Q4 PART II
    for (int l = 1; l < k; l++) {
      stdout.write("*");
    }
    stdout.write('\n');
  }

  for (int m = 1; m <=5; m++) {      //Q4 PART IV
    for (int n = 1; n <= (2 * m - 1); n++) { 
      stdout.write("*");
    }
    stdout.write('\n');
  }

  for (int o = 1; o<= 5; o++) {      //Q4 PART V
    for (int p = 1; p <=(2 * o - 1); p++) {
      stdout.write(o);
    }
    stdout.write('\n');
  }
}
