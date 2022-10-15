import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/home.dart';

void main() {
  runApp(MaterialApp(
    home: Builder(builder: (context) {
      return Hoho(etat: 'good');
    }),
  ));
}
