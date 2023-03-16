//Q4: Write a Dart function which will take an array of numbers stored and
//find the second lowest and second greatest numbers, respectively.
//Sample array : [1,2,3,4,5]
//Expected Output : 2,4
void main() {
  List<int> numb = [3, 2, 80000, 900, 1010, 1234];
  int secondHighestNum = secondHighest(numb);
  int secondLowestNum = secondLowest(numb);

  List<int> list = [secondLowestNum, secondHighestNum];
  //print(list);   //only for the result
  String result = list.join(',');
  print("Output: $result"); // 2,4
}

int secondHighest(List<int> numb) {
  int highest = numb[0];
  int secondHighest = numb[0];
  for (int n in numb) {
    if (n > highest) {
      secondHighest = highest;
      highest = n;
    } else if (n > secondHighest && n != highest) {
      secondHighest = n;
    }
  }
  return secondHighest;
}

int secondLowest(List<int> numb) {
  int lowest = numb[0];
  int secondLowest = numb[1];
  for (int n in numb) {
    if (n < lowest) {
      secondLowest = lowest;
      lowest = n;
    } else if (n < secondLowest && n != lowest) {
      secondLowest = n;
    }
  }
  return secondLowest;
}
