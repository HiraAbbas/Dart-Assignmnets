//Q3: Write a Dart function that accepts a string as a parameter and converts the
// first letter of each word of the string in upper case.
//Example string : the quick brown fox
//Expected Output : The Quick Brown Fox

void main() {
  String input = "the quick brown fox";
  String result = uppercaseString(input);
  print(result);
}

String uppercaseString(String input) {
  List<String> words = input.split(" ");
  for (int i = 0; i < words.length; i++) {
    String word = words[i];
    if (word.length > 0) {
      words[i] = word[0].toUpperCase() + word.substring(1).toLowerCase();
    }
  }
  return words.join(" ");
}
