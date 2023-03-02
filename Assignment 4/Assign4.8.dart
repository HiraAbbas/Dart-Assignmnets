//Q8: Write a program to sort a list of numbers.
//Program should be write using for loop only,
//.sort keyword is not allowed.
//[12,34,56,16,89,67,43]

void main() {
  List<int> numb = [12, 34, 56, 16, 89, 1000, 67, 43];
  int sorted;
  for (int i = 0; i < numb.length; i++) {
    for (int j = i + 1; j < numb.length; j++) {
      if (numb[i] > numb[j]) {
        sorted = numb[i];
        numb[i] = numb[j];
        numb[j] = sorted;
      }
    }
  }
  print("The Sorted List of Numbers: $numb");
}
