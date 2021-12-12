import 'package:flutter/material.dart';
import '../constant.dart';



class IconContentWidget extends StatelessWidget {
  final IconData? icon;
  final String label;
  IconContentWidget({this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children:<Widget>[
        Icon(icon,
          color: Color(0xFFFFFFFF),
          size: 60.0,
        ),
        SizedBox(height: 20.0,),
        Text(label,
          style: kStyleText,)
      ],

    );
  }
}