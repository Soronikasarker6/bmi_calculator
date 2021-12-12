import 'package:flutter/material.dart';
import '../constant.dart';
class CalculateButton extends StatelessWidget {
  final VoidCallback? onTap;
  final String? buttonTitle;


  CalculateButton({@required this.onTap, @required this.buttonTitle});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(child: Text(buttonTitle!, style:kLargeNUmber ,)),
        color: Color(0xFFEC114D),
        margin: EdgeInsets.only(top: 10.0),
        height: kBotomContainerHeight,
      ),
    );
  }
}