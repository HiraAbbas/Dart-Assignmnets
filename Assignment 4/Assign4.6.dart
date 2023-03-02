//Q6: Write a program to revere a list of numbers. Program should be write using for loop only, .reversed keyword is not allowed.
//[12,34,56,16,89,67,43]

void main() {
  List<int> numb = [12, 34, 56, 16, 89, 67, 43];
  List<int> rev = [];
  for (int i = numb.length - 1; i >= 0; i--) {
    rev.add(numb[i]);
  }
  print("List of Reversed Numbers: $rev");
}
