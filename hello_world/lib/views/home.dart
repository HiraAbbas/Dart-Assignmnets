import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hello_world/views/about.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Screen"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AboutScreen()),
                );
              },
              child: const Text('About screen'),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              //Navigator.of(context).pop(false);
              SystemNavigator.pop();
            },
            child: const Text('exit'),
          ),
        ],
      ),
    );
  }
}
