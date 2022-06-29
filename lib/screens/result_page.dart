import 'package:bmi_calculator/components/bottom_buttom.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/components/reuseable_card.dart';

class Result extends StatelessWidget {
  final String mainBmi;
  final String result;
  final String intepretation;

  Result(
      {required this.intepretation,
      required this.mainBmi,
      required this.result});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF0A0E21),
        title: Center(child: Text('BMI CALCULATOR')),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              child: Container(
            padding: EdgeInsets.all(15.0),
            alignment: Alignment.bottomLeft,
            child: Text(
              'Your Result',
              style: kYourResultStyle,
            ),
          )),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kactiveColor,
              customChild: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    result.toUpperCase(),
                    style: kBMIModeStyle,
                  ),
                  Text(
                    mainBmi,
                    style: kBMIAns,
                  ),
                  Text(
                    intepretation,
                    style: kBodyTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          BottomButtom(
            mainText: 'RE-CALCULATE',
            onTaping: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
