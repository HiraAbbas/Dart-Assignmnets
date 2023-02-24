//Q.2: Create an empty list of type string called days.
//Use the add method to add names of 7 days and print all days.
void main() {
  List<String> days = [];
  print(days); // empty list print for checking purpose
  days.add("Sunday");
  days.add("Monday");
  days.add("Tuesday");
  print(days); // checking list added
  days.add("Wednesday");
  days.add("Thursday");
  days.add("Friday");
  print(days); // final list with 7 days
}
