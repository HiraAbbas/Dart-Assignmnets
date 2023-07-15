import 'dart:convert';
import 'package:http/http.dart' as http; //used as create a post

addPost(data) async {
  String url = 'https://jsonplaceholder.typicode.com/posts';
  var urlUpdate = Uri.parse(url);
  final response = await http.post(
    urlUpdate,
    body: jsonEncode(data),
    headers: {'Content-type': 'application/json'},
  );
  print(response.body);
}
