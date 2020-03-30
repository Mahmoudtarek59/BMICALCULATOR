import 'package:flutter/material.dart';
class CoustomContainer extends StatelessWidget {
  final Color containerColor;
  final Widget cardChild;
  CoustomContainer({@required this.containerColor,this.cardChild});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: containerColor,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
