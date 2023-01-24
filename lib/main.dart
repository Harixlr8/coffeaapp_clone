import 'package:coffeaapp_clone/pages/homepage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme:
          ThemeData(brightness: Brightness.dark, primarySwatch: Colors.orange),
    ),
  );
}
