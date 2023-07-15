import 'package:flutter/material.dart';

customTextfield() {
  return TextField(
    controller: TextFieldController,
    obscureText: hide,
    decoration: InputDecoration(
      border: OutlineInputBorder(),
      labelText: type,
    ),
  );
}
