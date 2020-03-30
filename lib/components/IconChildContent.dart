import 'package:flutter/material.dart';
import '../constants.dart';
class IconChildContent extends StatelessWidget {
  final IconData icon;
  final String label;
  IconChildContent({this.icon,this.label});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80.0,
        ),
        SizedBox(height:15),
        Text(label,style: KLabelTextStyle,)
      ],
    );
  }
}