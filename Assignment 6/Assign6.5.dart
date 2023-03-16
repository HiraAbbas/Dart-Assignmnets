//Q5: Write a Dart function that accepts two arguments, a string
//and a letter and the function will count the number of occurrences of the specified letter within the string.
//Sample arguments : 'w3resource.com', 'o'
//Expected output : 2

void main() {
  String str = 'a letter and the function will count the number of occurrences';
  String letter = 'T'; // counts words occurance without case sensitive
  letter = letter.toLowerCase();
  int count = numberOccurrences(str, letter);
  print("The number of occurrences of the specified letter within the string Output is: $count"); // Output: 2
}

int numberOccurrences(String str, String letter) {
  int count = 0;
  for (int i = 0; i < str.length; i++) {
    if (str[i] == letter) {
      count++;
    }
  }
  return count;
}
