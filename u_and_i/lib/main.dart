import 'package:flutter/material.dart';
import 'package:u_and_i/screen/home_screen.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      fontFamily: "sunflower",
      textTheme: TextTheme(
        displayLarge: TextStyle(
          fontWeight: FontWeight.w900,
          fontSize: 35,
          color: Colors.pink[300],
        ),
        displayMedium: const TextStyle(
          fontSize: 18,
        ),
        bodyLarge: const TextStyle(
          color: Colors.white,
          fontSize: 27,
        ),
      ),
    ),
    home: HomeScreen(),
  ));
}
