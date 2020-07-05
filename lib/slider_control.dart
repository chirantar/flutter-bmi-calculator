import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class SliderControl extends StatefulWidget {
  int height;
  Function(double val) function;
  SliderControl({this.height, this.function});
  @override
  _SliderControlState createState() => _SliderControlState();
}


class _SliderControlState extends State<SliderControl> {
  String sliderVal = '0';
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          'Height',
          style: textStyle,
        ),
        RichText(
          text: TextSpan(
            text: widget.height.toString(),
            style: textStyleH1,
            children: <TextSpan>[
              TextSpan(text: 'cm', style: textStyle),
            ],
          ),
        ),
        SliderTheme(
          data: SliderTheme.of(context).copyWith(
            inactiveTrackColor: Colors.grey,
            activeTrackColor: Colors.white,
            thumbShape: RoundSliderThumbShape(
              enabledThumbRadius: 15,
            ),
            overlayShape: RoundSliderOverlayShape(
              overlayRadius: 30
            ),
            thumbColor: bottomContainerColor,
            overlayColor: Color(0x29EB1555)
          ),
          child: Slider(
            value: widget.height.toDouble(),
            min: 120,
            max: 220,
            onChanged: widget.function,
          ),
        )
      ],
    );
  }
}