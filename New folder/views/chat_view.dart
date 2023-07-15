import 'package:flutter/material.dart';
import 'package:hello_world/custom%20widget/custom_appbar.dart';
//import 'package:hello_world/custom%20widget/custom_appbar.dart';

class Chatview extends StatelessWidget {
  const Chatview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(200), child: appBarWidget()),
    );
  }
}
