import 'package:flutter/material.dart';
import 'package:flutter_weather_app/controller/deleteController.dart';
import 'package:flutter_weather_app/controller/patchController.dart';
import 'package:flutter_weather_app/controller/postcontroller.dart';

class PatchData extends StatefulWidget {
  PatchData({Key? key}) : super(key: key);

  @override
  _PatchDataState createState() => _PatchDataState();
}

class _PatchDataState extends State<PatchData> {
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
                addDelete({
                  "title": titleController.text,
                  "body": bodyController.text,
                });
              },
              child: Text("Delete"),
            )
          ],
        ),
      ),
    );
  }
}
