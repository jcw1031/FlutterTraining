import 'package:flutter/material.dart';
import 'package:random_dice/const/colors.dart';

final ThemeData myTheme = ThemeData(
  scaffoldBackgroundColor: backgroundColor,
  sliderTheme: SliderThemeData(
    thumbColor: primaryColor,
    activeTrackColor: primaryColor,
    inactiveTrackColor: primaryColor.withOpacity(0.3),
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    selectedItemColor: primaryColor,
    unselectedItemColor: secondaryColor,
    backgroundColor: backgroundColor,
  ),
);
