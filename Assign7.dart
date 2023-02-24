//Q.7: Create a list of numbers & write a program to
//get the smallest & greatest number from a list.

void main() {
  List<int> num = [44, 4, 988, 33329, 5235, 2];
  num.sort();
  print(num);
  print("the Smallest number in list is = ${num.first}");
  print("the Greatest number in list is = ${num.last}");
}
