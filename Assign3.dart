//Q.3: Create a list of Days and remove one by one from the end of list
void main() {
  List<String> days = [
    "Sunday",
    "Monday",
    "Tuesday",
    "Wednesday",
    "Thursday",
    "Friday"
  ];
  print(days);
  days.removeLast(); // remove days from the end of list
  print(days);
  days.removeLast();
  print(days);
  days.removeLast();
  print(days);
  days.removeLast();
  print(days);
  days.removeLast();
  print(days);
  days.removeLast();
  print(days); // empty list
}
