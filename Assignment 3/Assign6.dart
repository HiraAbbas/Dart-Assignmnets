//Q.6: Write a program to sum all the items in a list,
// then multiply all the items in a list with there index number.

void main() {
  List<int> num = [10, 5, 6, 4, 10];
  int sum = 0;
  List<int> multi = [];
  num.forEach((num) {
    (sum += num);
  });
  print(sum);
  multi = List.generate(num.length, (index) => index * num[index]);
  print(multi);
}
