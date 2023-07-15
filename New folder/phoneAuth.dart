import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_application_firebase/views/verification.dart';

class Phoneauth extends StatefulWidget {
  const Phoneauth({super.key});

  @override
  State<Phoneauth> createState() => _PhoneauthState();
}

class _PhoneauthState extends State<Phoneauth> {
  TextEditingController phoneController = TextEditingController();

  void sendOTP() async {
    String phone = "+92" + phoneController.text.trim();
    await FirebaseAuth.instance.verifyPhoneNumber(
      phoneNumber: phone,
      codeSent: (verificationId, resendToken) {},
      verificationCompleted: (credential) {},
      verificationFailed: (ex) {
        (ex.code.toString());
      },
      codeAutoRetrievalTimeout: (verificationId){},
      timeout: Duration(seconds: 40),
    );
  }

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
            'Sign-In with phone',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.left,
          ),
          SizedBox(height: 10),
          const SizedBox(
            child: Text("Verification code sent to your phone"),
          ),
          SizedBox(height: 40.0),
          TextField(
            controller: phoneController,
            decoration: InputDecoration(
              labelText: 'Enter Phone Number',
              suffixText: 'Re-send Code',
              // Add any other desired decoration properties
            ),
            // Add any other desired properties for the TextField
          ),
          ElevatedButton(
            onPressed: () {
              sendOTP();
              //createAccount();
              // Navigator.push(
              // context,
              //MaterialPageRoute(builder: (context) => HomeProduct()),
              //);
            },
            child: const Text('Sign In with phone'),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
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
