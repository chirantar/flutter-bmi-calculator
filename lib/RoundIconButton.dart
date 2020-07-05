import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RoundIconButton extends StatelessWidget {

  final IconData iconData;
  final Function onPress;

  RoundIconButton({this.iconData, this.onPress});
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPress,
      shape: CircleBorder(),
      child: Icon(iconData),
      elevation: 0,
      fillColor: Color(0xFF4c4f5e),
      constraints: BoxConstraints.tightFor(
        width: 56,
        height: 56
      ),
    );
  }
}
