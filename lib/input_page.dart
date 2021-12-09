import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reuse_contain.dart';
import 'constant.dart';


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
                  Slider(
                      value: height.toDouble(), min: 120.0, max: 220.0,
                        activeColor:Colors.brown,inactiveColor: Colors.red ,
                      onChanged: (double newValue){
                       setState(() {
                         height = newValue.round();
                       });
                  })


                ],
              ) ,
              colour: kActiveColor,
            )),
          // Expanded(
          //     child: Row(
          //       children:<Widget> [
          //         Expanded(
          //           child: ReuseContain(
          //             colour: activeColor,
          //             cardChild: IconContentWidget(icon: FontAwesomeIcons.venus,
          //               label: 'Female',),
          //           )
          //         ),
          //         Expanded(
          //           child: ReuseContain(
          //             colour: activeColor,
          //             cardChild: IconContentWidget(
          //               icon: FontAwesomeIcons.venus,
          //               label: 'Female',
          //             ),
          //           ))
          //       ],
          //     )
          // ),
          Container(
            color: Colors.red,
            margin: EdgeInsets.only(top: 10.0),
            height: kBotomContainerHeight,
          )

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






