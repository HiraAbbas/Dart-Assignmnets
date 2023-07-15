import 'package:flutter/material.dart';
//const Color whatsappGreen = Color(0xFF25D366);

Widget customChatWidget(name, msg, time, color) {
  return const ListTile(
    tileColor: Colors.amber,
    leading: CircleAvatar(
      backgroundColor: Color(0xFF25D366),
      radius: 25,
    ),
    title: Text("Hira"),
    subtitle: Text("Assigment done"),
    trailing: Icon(Icons.check_box_rounded),
  );
}
