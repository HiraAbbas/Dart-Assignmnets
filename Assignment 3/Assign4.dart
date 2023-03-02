//Q.4: Create a list of numbers and create one empty list,
//now check for every index number is EVEN or ODD.
//if number is even then add true into empty list and if number is odd then
//add false into empty list,
// both list needs to print at the end.

void main() {
  List<int> num = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 13, 34, 53, 21, 56, 77, 22];
  List<bool> emptyNum = [];
  num.forEach((num) {
    if (num % 2 == 0) {
      emptyNum.add(true);
    } else {
      emptyNum.add(false);
    }
  });
  print(num);
  print(emptyNum);
}
