import 'package:flutter/material.dart';

class ReuseContain extends StatelessWidget {
  final Color colour;
  final Widget? cardChild;
  final Function? onPress;
  ReuseContain({required this.colour,  this.cardChild, this.onPress});


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){onPress;},
      child: Container(
        margin: EdgeInsets.all(10.0),
        child: cardChild,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: colour,
        ),),
    );
  }
}