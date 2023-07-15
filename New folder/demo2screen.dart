import 'package:flutter/material.dart';
import 'package:flutter_weather_app/controller/putcontroller.dart';

class putData extends StatefulWidget {
   putData({super.key});

  @override
  State<putData> createState() => _putDataState();
  

}

class _putDataState extends State<putData> {
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
                addPut({
                  "title":titleController.text, 
                  "body":bodyController.text,
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
