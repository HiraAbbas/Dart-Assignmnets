import 'package:flutter/material.dart';
import 'package:flutter_weather_app/controller/postcontroller.dart';

class PostData extends StatefulWidget {
  PostData({Key? key}) : super(key: key);

  @override
  _PostDataState createState() => _PostDataState();
}

class _PostDataState extends State<PostData> {
  final titleController = TextEditingController();
  final bodyController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            TextFormField(
              controller: titleController,
            ),
            TextFormField(
              controller: bodyController,
            ),
            ElevatedButton(
              onPressed: () {
                addPost({
                  "title": titleController.text,
                  "body": bodyController.text,
                });
              },
              child: Text("Add"),
            )
          ],
        ),
      ),
    );
  }
}
