import 'package:flutter/material.dart';

PreferredSizeWidget appBarWidget() {
  return AppBar(
    title: const Text("WhatsApp"),
    backgroundColor: const Color(0xff128C7E),
    actions: [
      IconButton(
        icon: const Icon(Icons.camera_alt_rounded),
        onPressed: () {
          // Add your camera code here
        },
      ),
      IconButton(
        icon: const Icon(Icons.search),
        onPressed: () {
          // Add your search code here
        },
      ),
      IconButton(
        icon: const Icon(Icons.more_vert),
        onPressed: () {
          // Add your "more options" code here
        },
      ),
    ],
  );
}
