import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
import '../components/CoustomContainer.dart';
import '../components/custom_bottom_Button.dart';

class ResultsPage extends StatelessWidget {

  ResultsPage({this.bmiResult,this.resultText,this.interpretation});
  final String bmiResult;
  final String resultText;
  final String interpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("BMI CALCULATOR"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Container(
                padding: EdgeInsets.all(15),
                alignment: Alignment.bottomLeft,
                child: Text(
                  "your Result",
                  style: KTitleTextStyle,
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: CoustomContainer(
                containerColor: KActiveCardColor,
                cardChild: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(resultText.toUpperCase(),style: KResultTextStyle,),
                    Text(bmiResult,style: KBMITextStyle,),
                    Text(interpretation,style: KAdviceTextStyle,textAlign: TextAlign.center,),
                  ],
                ),
              ),
            ),
            Expanded(
                child: CustomBottomButton(
                  title: "RE-CALCULATE",
                  onTap: ()=>Navigator.of(context).pop(),
                )),
          ],
        ));
  }
}
