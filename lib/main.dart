import 'package:bmi/splashscreen.dart';
import 'package:flutter/material.dart';

import 'input__page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
          primaryColor: Color(0xFF080C22),
          scaffoldBackgroundColor: Color(0xFF080C22)),
    );
  }
}
