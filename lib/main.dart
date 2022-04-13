import 'package:flutter/material.dart';
import 'input_page.dart';

void main() => runApp(BMICalculator());
final ThemeData theme = ThemeData();

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme.copyWith(
        colorScheme: theme.colorScheme.copyWith(
          primary: Color(0xff090C22),
        ),
        scaffoldBackgroundColor: Color(0xff090C22),
        textTheme: TextTheme(
          bodyText1: TextStyle(color: Colors.white),
        ),
      ),
      home: InputPage(),
    );
  }
}
