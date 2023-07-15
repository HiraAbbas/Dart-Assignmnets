import 'package:flutter/material.dart';
import 'package:flutter_application_firebase/views/profile.dart';
import 'package:pin_code_text_field/pin_code_text_field.dart';

class Verification extends StatefulWidget {
  const Verification({Key? key});

  @override
  _VerificationState createState() => _VerificationState();
}

class _VerificationState extends State<Verification> {
  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(8.0),
        
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                  padding: const EdgeInsets.only(left: 0.8),
                  icon: const Icon(Icons.keyboard_arrow_left),
                  onPressed: () => Navigator.of(context).pop(),
                ),
              ],
            ),
            const SizedBox(height: 24.0),
            const Text(
              'Verification',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.left,
            ),
            SizedBox(height: 10),
            const SizedBox(
              child: Text("Verification code sent to your email"),
            ),
            SizedBox(height: 40.0),
            TextField(
              decoration: InputDecoration(
                labelText: 'Verification Code',
                suffixText: 'Re-send Code',
                // Add any other desired decoration properties
              ),
              // Add any other desired properties for the TextField
            ),
            SizedBox(height: 40.0),
             PinCodeTextField(
              controller: textEditingController,
              pinBoxHeight: 50.0,
              pinBoxWidth: 50.0,
             pinBoxBorderWidth: 0,
              pinTextStyle: TextStyle(fontSize: 20.0),
              pinBoxRadius: 10.0,
              //highlightPinBoxColor: Colors.blue,
              highlightAnimationBeginColor: Colors.green,
              highlightAnimationEndColor: Colors.red,
              maxLength: 6,
              onDone: (text) {
                // Handle verification code input completion
                print('Verification Code: $text');
              },
              onTextChanged: (text) {
                // Handle text changed event
                print('Current Text: $text');
              },
            ),
             SizedBox(height: 30.0),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Profilepassword()),
                );
              },
              child: Text('Continue'),
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 15.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
           
           
          ],
        
      ),
    );
  }
}
