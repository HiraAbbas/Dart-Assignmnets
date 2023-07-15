import 'dart:convert';
import 'package:http/http.dart' as http;

getuserList() async {
  var userData = [];
  var url = "https://jsonplaceholder.typicode.com/users";
  var urlUpdate= Uri.parse(url);
  var response = await http.get(Uri.parse(url));
  var res =jsonDecode(response.body);
  //for(var item in res){
    //userData.add(user.fromJson(item));

  //}
  print(res);
  return res;

}