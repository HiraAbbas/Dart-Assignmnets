void main() {
  List<num> myList = ["12", 12, 34, 56, 77, 88];
  print(myList);
  print(myList[4]);
  print(myList.first);
  print(myList.last);
  print(myList.length);
  //print(myList[1 + 2 + 3]);
  myList[4] = 100;
  print(myList);
  myList.replaceRange(0, 4, [23, 23, 33]);
  print(myList);
  myList.replaceRange(0, 4, [23, 23, 33, 45]);
  print(myList);
  myList.replaceRange(0, 5, [23, 23, 33, 49, 57, 55]);
  print(myList);
}













//String email = "hira@gmail.com";
  //String password = "12345";
  //if (email == "hira@gmail.com" || password == "1345") {
    //print("login successfully");
  //} else {
    //if (email != "hira@gmail.com") {
      //print("email incorrect");
    //}
    //if (password != "1345") {
     // print("password incorrect");
   // }
  //}
//}
