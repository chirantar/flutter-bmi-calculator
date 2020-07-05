import 'package:bmi_calculator/base_container.dart';
import 'package:bmi_calculator/bottom_btn.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'constants.dart';

class Results extends StatelessWidget {

  BmiType type = BmiType.Normal;
  String bmiValue = '22';
  String interpretaion = 'You are overWeight and you need to shed someweight';

  Results({@required this.type, @required this.bmiValue, @required this.interpretaion});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0D22),
        accentColor: Color(0xFFEB1555),
      ),
      home: Scaffold(
          appBar: AppBar(
            title: Text('BMI CALCULATOR'),
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,

            children: <Widget>[
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(8),
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    'Your Results',
                    style: textStyleH2,
                  ),
                ),
              ),
              Expanded(
                flex: 5,
                child: BaseContainer(
                  colour: baseContainerColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(describeEnum(type),
                      style: textStyleList[type.index],),
                      Text(bmiValue, style: textStyleH0,),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(interpretaion, style: textStyle,
                        textAlign: TextAlign.center,),
                      )
                    ],
                  ),
                ),
              ),
              BottomButton(
                text: 'RE-CALCULATE YOUR BMI',
                onTap: (){
                  Navigator.pop( context);
                },
              ),
            ],
          )),
    );
  }
}
