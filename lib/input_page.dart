import 'package:bmi_calculator/addsub_control.dart';
import 'package:bmi_calculator/base_container.dart';
import 'package:bmi_calculator/bottom_btn.dart';
import 'package:bmi_calculator/calculator_brain.dart';
import 'package:bmi_calculator/slider_control.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'RoundIconButton.dart';
import 'constants.dart';
import 'icon_content_widget.dart';
import 'results.dart';

Color selectedColor = Colors.red.shade500;

enum Gender {
  Male,
  Female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = inactiveColor;
  Color femaleCardColor = inactiveColor;
  int weight = 60;
  int age = 15;
  int height = 180;

  Gender selectedGender;
  CalculatorBrain brain;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: IconContentWidget(
                    iconText: 'Male',
                    iconData: FontAwesomeIcons.mars,
                    color: selectedGender == Gender.Male
                        ? selectedColor
                        : inactiveColor,
                    func: () {
                      setState(() {
                        selectedGender = Gender.Male;
                      });
                    },
                  ),
                ),
                Expanded(
                  child: IconContentWidget(
                    iconText: 'Female',
                    iconData: FontAwesomeIcons.venus,
                    color: selectedGender == Gender.Female
                        ? selectedColor
                        : inactiveColor,
                    func: () {
                      setState(() {
                        selectedGender = Gender.Female;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: BaseContainer(
              colour: baseContainerColor,
              cardChild: SliderControl(
                height: height,
                function: (val) {
                  setState(() {
                    height = val.toInt();
                  });
                },
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: BaseContainer(
                    colour: baseContainerColor,
                    cardChild: AddSubControl(
                      value: weight,
                      text: 'Weight',
                      addOnPress: () {
                        setState(() {
                          weight++;
                        });
                      },
                      subOnPress: () {
                        setState(() {
                          weight--;
                        });
                      },
                    ),
                  ),
                ),
                Expanded(
                  child: BaseContainer(
                    colour: baseContainerColor,
                    cardChild: AddSubControl(
                      value: age,
                      text: 'Age',
                      subOnPress: () {
                        setState(() {
                          age--;
                        });
                      },
                      addOnPress: () {
                        setState(() {
                          age++;
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          BottomButton(
            text: 'CALCULATE YOUR BMI',
            onTap: () {
              print('weight = $weight');
              print('height =  $height');
              print('age = $age');
              brain = CalculatorBrain(weight, height);
              brain.calculateBmi();

              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return Results(
                    type: brain.getResult(),
                    bmiValue: brain.calculateBmi(),
                    interpretaion: brain.getInterpretation(),
                  );
                }),
              );
            },
          ),
        ],
      ),
    );
  }

  UpdateColor(Gender selectedGender) {
    if (selectedGender == Gender.Female) {
      maleCardColor = inactiveColor;
      femaleCardColor = selectedColor;
    } else {
      maleCardColor = selectedColor;
      femaleCardColor = inactiveColor;
    }
  }
}
