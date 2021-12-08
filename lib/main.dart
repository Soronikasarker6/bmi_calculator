import 'package:flutter/material.dart';

void main()=>runApp(BMICalculator());
class BMICalculator extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFF0A0C23),
      ),
      home: InputPage(),
    );
  }
}

class InputPage extends StatefulWidget {

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       centerTitle: true,
        title: Text('BMI Calculator'),
        backgroundColor: Color(0xFF0A0C23),
      ),
    );
  }
}


