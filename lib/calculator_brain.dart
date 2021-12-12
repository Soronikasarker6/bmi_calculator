import 'dart:math';

class CalculatorBrain{
  final int height;
  final int weight;
  double? _bmi;

  CalculatorBrain({required this.height, required this.weight});

   String calculateBMI(){
     _bmi = weight / pow(height/100, 2);
   return _bmi!.toStringAsFixed(1);
  }

  String getResult(){
     if (_bmi! >= 25){
       return 'overWeight';
     }else if (_bmi! >= 18){
       return 'Normal Weight';
     } else{
       return 'UnderWeight';
     }
  }
String getInterpretation(){
  if (_bmi! >= 25){
    return 'Control your food addiction. Exercise a lot';
  } else if (_bmi! >= 18){
    return 'Great job. You are out of danger';
  } else{
    return 'Eat healthy food';
  }
}

}