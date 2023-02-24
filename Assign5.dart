//Q.5: Count number of even & number of odds
//from Q4 list using increment & decrement operators only.
void main() {
  List<int> num = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 13, 34, 53, 21, 56, 77, 22];
  List<bool> emptyNum = [];
  int countT = 0;
  int countF = 0;
  num.forEach((num) {
    if (num % 2 == 0) {
      emptyNum.add(true);
      countT++;
    } else {
      emptyNum.add(false);
      countF++;
    }
  });
  //print(num);
  //print(emptyNum);
  print("There are $countT Even Numbers in List");
  print("There are $countF Odd Numbers in list");
}
