import 'package:flutter/material.dart';
import '../constants.dart';
class CustomBottomButton extends StatelessWidget {

  final String title;
  final Function onTap;
  CustomBottomButton({this.title,this.onTap});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child:Container(
        child: Center(child: Text(title,style: KLargeTextStyle,)),
        color: KBottomBarColor,
        margin: EdgeInsets.only(top: 10),
        padding: EdgeInsets.only(bottom: 20),
        width: double.infinity,
        height: KBottomContainerHeight,
      ),
    );
  }
}