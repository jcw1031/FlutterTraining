import 'package:flutter/material.dart';
import 'package:random_dice/const/theme.dart';
import 'package:random_dice/screen/root_screen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: myTheme,
    home: RootScreen(),
  ));
}
