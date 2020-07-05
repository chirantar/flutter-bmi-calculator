import 'package:flutter/material.dart';

import 'constants.dart';

class BottomButton extends StatelessWidget {
  Function onTap;
  String text;

  BottomButton({this.text, this.onTap});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        color: bottomContainerColor,
        height: 80,
        child: Center(
          child: Text(text,
            style: textStyle.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
