import 'dart:convert';
import 'package:http/http.dart' as http; //used as create a post

addDelete(data) async {
  String url = 'https://jsonplaceholder.typicode.com/posts/6';
  var urlUpdate = Uri.parse(url);
  final response = await http.delete(
    urlUpdate,
    body: jsonEncode(data),
    headers: {'Content-type': 'application/json'},
  );
  print(response.body);
}
