import 'package:flutter/material.dart';
import 'package:flutter_application_firebase/views/product.dart';


class Profilepassword extends StatefulWidget {
   Profilepassword({Key? key});

  @override
  _Profilepassword createState() => _Profilepassword();
}

class _Profilepassword extends State<Profilepassword> {
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
              'Profile & Password',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.left,
            ),
            SizedBox(height: 10),
            const SizedBox(
              child: Text("Login to continue to use My Mall"),
            ),
            SizedBox(height: 40.0),
            TextField(
              decoration: InputDecoration(
                labelText: 'Full Name',
             
                // Add any other desired decoration properties
              ),
              // Add any other desired properties for the TextField
            ),
             TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
               // prefixIcon: Icon(Icons.lock),
                suffixIcon: IconButton(
                  icon: Icon(Icons.visibility),
                  onPressed: () {
                      
                  },
                ),
              ),
            ),
            SizedBox(height: 40.0),
            
             SizedBox(height: 30.0),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HomeProduct()),
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
