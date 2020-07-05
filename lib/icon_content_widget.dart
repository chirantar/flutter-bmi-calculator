import 'package:bmi_calculator/input_page.dart';
import 'package:flutter/material.dart';

import 'base_container.dart';
import 'constants.dart';



class IconContentWidget extends StatelessWidget {
  final String iconText;
  final IconData iconData;
  final Color color;
  final Function func;

  IconContentWidget({this.iconText, this.iconData, this.color, this.func});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: func,
      child: BaseContainer(
        colour: color,
        cardChild: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              iconData,
              size: 80,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              iconText,
              style: textStyle,
            ),
          ],
        ),
      ),
    );
  }
}