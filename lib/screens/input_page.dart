import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../components/icon_content.dart';
import '../components/reuse_contain.dart';
import '../constant.dart';
import 'result.dart';
import '../components/calculate_button.dart';
import 'package:bmi_calculator/components/round_icon_button.dart';
import 'package:bmi_calculator/calculator_brain.dart';


enum Gender{
  male, female,
}

class InputPage extends StatefulWidget {

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? selectedGender;
  int height = 180;
  int weight= 60;
  int age = 22;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('BMI Calculator'),
        backgroundColor: Color(0xFF0A0C23),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children:<Widget> [
          Expanded(
              child: Row(
            children:<Widget> [
              Expanded(
                child: ReuseContain(
                  onPress: (){
                    setState(() {
                      selectedGender = Gender.male;
                    });
                  },
                  colour: selectedGender == Gender.male? kActiveColor : kInActiveColor,
                  cardChild: IconContentWidget(icon: FontAwesomeIcons.mars,
                      label: 'Male',),
                ),),
              Expanded(
                child: ReuseContain(
                  onPress: (){
                    setState(() {
                      selectedGender = Gender.female;
                    });
                  },
                  colour: selectedGender == Gender.female ? kActiveColor : kInActiveColor,
                  cardChild: IconContentWidget(icon: FontAwesomeIcons.venus,
                    label: 'Female',),
                ),)
            ],
          )
          ),
          Expanded(
            child: ReuseContain(
              cardChild:Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Height', style: kStyleText,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [

                      Text(height.toString(),
                      style: kNumberTextStyle,),
                      Text('cm',
                      style: kStyleText,)
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      inactiveTrackColor: Color(0xFF8D8E98),
                      activeTrackColor: Colors.white,
                      thumbColor: Color(0xFFEC114D),
                      overlayColor: Color( 0x1fEC114D),
                      thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
                      overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0)
                    ),
                    child: Slider(
                        value: height.toDouble(),
                        min: 120.0, max: 220.0,
                        onChanged: (double newValue){
                         setState(() {
                           height = newValue.round();
                         });
                    }),
                  )


                ],
              ) ,
              colour: kActiveColor,
            )),
          Expanded(
              child: Row(
                children:<Widget> [
                  Expanded(
                    child: ReuseContain(
                      colour: kActiveColor,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text('Weight',
                          style: kStyleText,
                          ),
                          Text(weight.toString(),
                          style: kNumberTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundIconButton(
                            icon: FontAwesomeIcons.minus,
                                onPress: (){
                              setState(() {
                                weight --;
                              });
                                },
                              ),
                             SizedBox(
                               width: 10.0,
                             ),
                             RoundIconButton(icon: FontAwesomeIcons.plus,
                             onPress: (){
                               setState(() {
                                 weight ++;
                               });
                             },)
                            ],
                          )
                        ],
                      ),
                    )
                  ),
                  Expanded(
                    child: ReuseContain(
                      colour: kActiveColor,
                      cardChild:  Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text('Age',
                            style: kStyleText,
                          ),
                          Text(age.toString(),
                            style: kNumberTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundIconButton(
                                icon: FontAwesomeIcons.minus,
                                onPress: (){
                                  setState(() {
                                    age --;
                                  });
                                },
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              RoundIconButton(icon: FontAwesomeIcons.plus,
                                onPress: (){
                                  setState(() {
                                    age ++;
                                  });
                                },)
                            ],
                          )
                        ],
                      ),
                    ))
                ],
              )
          ),

          CalculateButton(buttonTitle: 'Calculate',onTap:(){
            CalculatorBrain calc = CalculatorBrain(height: height, weight: weight);

            Navigator.push(context, MaterialPageRoute(builder: (context)=> ResultPage(
              bmiResult: calc.calculateBMI(),
              resultText:calc.getResult() ,
              interpretation:calc.getInterpretation() ,
            )));
          } ,),

        ],
      )
      );
      // floatingActionButton: Theme(
      //   data: ThemeData(
      //       accentColor: Color(0xFFEB1555),
      //   ),
      //   child: FloatingActionButton(
      //     onPressed: () {  },
      //     child: Icon(Icons.add),
      //
      //   ),
      // ),
  }
}









