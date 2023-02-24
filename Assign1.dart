//Q.1: Create a list of names and print all names using list.

void main() {
  List<String> names = ["James", "Robert", "John", "Michael", "David"];
  int i = 1;
  names.forEach((name) {
    print("$i. $name");
    i++;
  });
}
