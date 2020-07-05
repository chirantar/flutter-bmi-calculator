import 'dart:math';
import 'constants.dart';

class CalculatorBrain{
  int height;
  int weight;

  double _bmi;

  CalculatorBrain(this.weight, this.height);

  String calculateBmi() {

    _bmi = weight / pow(height/100, 2);
    return _bmi.toStringAsFixed(1);
  }

  BmiType getResult() {
    if (_bmi >=25){
      return BmiType.Overweight;
    }
    else if (_bmi > 18.5){
      return BmiType.Normal;
    }
    else{
      return BmiType.UnderWeight;
    }
  }

  String getInterpretation() {
    if (_bmi >=25){
      return 'You are overWeight and you need to shed some weight';
    }
    else if (_bmi > 18.5){
      return 'You are Fit and Fine and just stay the same';
    }
    else{
      return 'You are underweight and you need to gain  some weight';
    }
  }
}