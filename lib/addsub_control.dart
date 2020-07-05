import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'RoundIconButton.dart';
import 'constants.dart';

class AddSubControl extends StatefulWidget {
  @override
  _AddSubControlState createState() => _AddSubControlState();
  int value;
  String text;
  Function addOnPress;
  Function subOnPress;
  AddSubControl({this.value, this.text, this.addOnPress, this.subOnPress});

}

class _AddSubControlState extends State<AddSubControl> {

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(widget.text, style: textStyle),
        Text(
          widget.value.toString(),
          style: textStyleH1,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RoundIconButton(
              iconData: FontAwesomeIcons.plus,
              onPress: widget.addOnPress,
            ),
            SizedBox(width: 5,),
            RoundIconButton(
                iconData: FontAwesomeIcons.minus,
                onPress: widget.subOnPress,
            ),
          ],
        )
      ],
    );
  }
}
