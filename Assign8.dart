//Q.8: Create a map with name, phone keys and store some values to it.
// Use where to find all keys that have length 4.

void main() {
  Map<String, int> phoneBook = {
    "David": 4554,
    "John": 36564,
    "Cann": 87973,
    "Alice": 7868687
  };
  List<String> keys4 = phoneBook.keys.where((key) => key.length == 4).toList();
  print(keys4);
}
