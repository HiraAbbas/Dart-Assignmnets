import 'package:flutter/material.dart';

customContainers() {
  return Container(
    padding: EdgeInsets.all(20),
    height: 80,
    width: 80,
    decoration: BoxDecoration(
      color: Colors.red,
      borderRadius: BorderRadius.circular(40),
    ),
    child: const Text(  
      
      textAlign: TextAlign.center,
      "Hi Box",
      style: TextStyle(
        color: Colors.amber,
        fontStyle: FontStyle.italic,
      ),
    ),
  );
}
