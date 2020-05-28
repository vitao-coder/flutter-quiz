import 'package:flutter/material.dart';

ThemeData appTheme() {
  return ThemeData(
    primaryColor: Colors.indigo[100],
    accentColor: Colors.indigoAccent,
    hintColor: Colors.white,
    dividerColor: Colors.white,
    buttonColor: Colors.white,
    scaffoldBackgroundColor: Colors.indigo[200],
    canvasColor: Colors.indigo[300],    
  );
}
ThemeData darkTheme()
{
    return ThemeData.dark();
}