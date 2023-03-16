//Q2: Write a Dart function that returns a passed string with letters in alphabetical orders.
//Example String -> hello
//Expected String -> ehllo
//splits the string into individual characters

void main() {
  String input = ("my NAMe is Hira");
  alphabeticalOrder(input);
  characterOrder(input);
  sortCharacters(input);
}

void alphabeticalOrder(String input) {
  input = input.toLowerCase();
  List<String> word = input.split('');
  word.sort(); //splits the string into individual characters
  String order = word.join('');
  print("Characters in a String in alphabetical order: $order");
}

void characterOrder(String input) {
  input = input.toLowerCase();
  List<String> word = input.split(' '); //split the input string into words
  word.sort();
  String order = word.join(' ');
  print("Words in a String in alphabetical order: $order");
}

void sortCharacters(String input) {
  input = input.toLowerCase();
  //split within each words
  List<String> words = input.split(' ');
  List<String> sortedWords = [];
  for (String word in words) {
    List<String> chars = word.split('');
    chars.sort();
    String sortedWord = chars.join('');
    sortedWords.add(sortedWord);
  }
  String order = sortedWords.join(' ');
  print("Characters within each word in alphabetical order: $order");
}
