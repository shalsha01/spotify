import 'package:flutter/material.dart';
import 'package:spotify/core/configs/theme/app_colors.dart';

class AppTheme {

  static final lightTheme = ThemeData(
    primaryColor: Appcolors.primaryColor,
    scaffoldBackgroundColor: Appcolors.lightBackgroundColor,
    brightness: Brightness.light,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style:ElevatedButton.styleFrom(
        backgroundColor: Appcolors.primaryColor,
        textStyle:TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      )
  )
  );

  static final darkTheme = ThemeData(
    primaryColor: Appcolors.primaryColor,
    scaffoldBackgroundColor: Appcolors.darkBackgroundColor,
    brightness: Brightness.dark,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style:ElevatedButton.styleFrom(
        backgroundColor: Appcolors.primaryColor,
        textStyle:TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      )
  )
  );


}
