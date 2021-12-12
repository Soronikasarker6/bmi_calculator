import 'package:bmi_calculator/constant.dart';
import 'package:flutter/material.dart';
import '../components/reuse_contain.dart';
import '../components/calculate_button.dart';

class ResultPage extends StatelessWidget {
  final String bmiResult;
  final String resultText;
  final String interpretation;


  ResultPage({required this.bmiResult,required this.resultText,required this.interpretation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI result'),

      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children:<Widget> [
          Expanded(
              child: Container
                (
                  padding: EdgeInsets.all(15.0),
                  alignment: Alignment.bottomLeft,
                  child: Text('Your Result', style: kTitleTextStle,textAlign: TextAlign.center,))
          ),
          Expanded(
            flex: 5,
              child: ReuseContain(colour: kActiveColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children:<Widget> [
                  Text(resultText.toUpperCase(), style: kResult,),
                  Text(bmiResult, style: kNumberTextStyle,),
                  Text(interpretation, style: kBodyTextStyle, textAlign: TextAlign.center,)

                ],
              ),)
            ,),
          CalculateButton(buttonTitle: 'Recalculate',onTap:(){
            Navigator.pop(context);
          } ,)
        ],
      )



    );
  }
}
