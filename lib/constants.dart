import 'package:flutter/material.dart';

const double bottomContainerHeight = 80;
const Color bottomContainerColor = Color(0xFFEB1555);
const Color baseContainerColor = Color(0xFF1d1e33);
const Color inactiveColor = Color(0xFF1D1E33);

const TextStyle textStyle = TextStyle(
  fontSize: 20,
);

const TextStyle textStyleH1=  TextStyle(
fontSize: 60, fontWeight: FontWeight.bold);

const TextStyle textStyleH2=  TextStyle(
    fontSize: 50, fontWeight: FontWeight.bold);

const TextStyle textStyleH0=  TextStyle(
    fontSize: 90, fontWeight: FontWeight.bold);

List<TextStyle> textStyleList = [
  TextStyle(fontSize: 25, color: Colors.red),
  TextStyle(fontSize: 25, color: Colors.green),
  TextStyle(fontSize: 25, color: Colors.orange)
];

enum BmiType{
  UnderWeight,
  Normal,
  Overweight
}
