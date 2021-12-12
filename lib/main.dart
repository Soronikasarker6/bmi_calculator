import 'package:flutter/material.dart';
import 'screens/input_page.dart';

void main()=>runApp(BMICalculator());
class BMICalculator extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFF0A0C23),
        scaffoldBackgroundColor: Color(0xFF0A0C23),

      ),
      home: InputPage(),
    );
  }
}




