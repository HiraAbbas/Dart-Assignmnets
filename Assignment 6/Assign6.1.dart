//Q1: Write a Dart function that returns whether a passed string is palindrome or not?
//A palindrome is word, phrase, or sequence that reads the same
//backward as forward, e.g., madam, non, mom etc.

void main() {
  palindrome("16461");
  palindrome("Hira");
  palindrome("kayak");
  palindrome("Mom");
  palindrome("DaD");
  palindrome("DAD");
}

void palindrome(String word) {
  String reversedString = revString(word);
  if (word.toLowerCase() == reversedString.toLowerCase()) {
    print("Passed String is Palindrome: $word");
  } else {
    print("Passed String is not Palindrome: $word");
  }
}

String revString(String word) {
  String reversedString = '';
  for (int i = word.length - 1; i >= 0; i--) {
    reversedString += word[i];
  }
  return reversedString;
}
