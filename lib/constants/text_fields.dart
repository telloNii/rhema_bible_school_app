import 'package:flutter/material.dart';

InputDecoration authScreenFormDeco = const InputDecoration(
  alignLabelWithHint: false,
  floatingLabelAlignment: FloatingLabelAlignment.start,
  floatingLabelBehavior: FloatingLabelBehavior.always,
  hintText: "johndoe@doe.com",
  focusColor: Colors.black,
  label: Text("Email"),
  enabledBorder: UnderlineInputBorder(
    borderSide: BorderSide(style: BorderStyle.solid, width: 0.5),
  ),
  focusedBorder: UnderlineInputBorder(
    borderSide: BorderSide(style: BorderStyle.solid, width: 0.5),
  ),
);
