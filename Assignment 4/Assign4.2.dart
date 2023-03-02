//Q2: Create a list of numbers and find highest number from this list.

void main() {
  List<int> numb = [10, 5, 20, 100, 25, 30];
  int highest = numb[0];

  for (int n in numb) {
    if (n > highest) {
      highest = n;
    }
  }

  print("The highest number is: $highest");
}
