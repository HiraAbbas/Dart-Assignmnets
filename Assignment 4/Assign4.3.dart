//Q3: write a program to print first 10 number of series 0,3,6,9,12...

void main() {
  int series;
  String result = ""; // Initialize an empty string to store the result horizontally
  for (int i = 0; i < 10; i++) {
    series = 3 * i;
    result += "$series, "; // Append the current term to the result string
  }
  print("First 10 numbers of series= $result..."); // Print the result string
}
