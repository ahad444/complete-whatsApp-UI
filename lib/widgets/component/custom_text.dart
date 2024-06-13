import 'dart:ui';

import 'package:flutter/cupertino.dart';

class Custom_Text extends StatelessWidget {
  Custom_Text(
      {super.key,
        this.text,
        this.color,
        this.fontSize,
        this.fontWeight,
        this.wordSpacing,
        this.leftPadding,
        this.rightPadding,
        this.topPadding,
        this.fontFamily,
        this.textDecoration,
        this.align,
        this.bottomPadding});

  final String? text;
  TextAlign? align;
  final Color? color;
  final double? fontSize;
  final FontWeight? fontWeight;
  final double? wordSpacing;
  final double? leftPadding;
  final double? rightPadding;
  final double? topPadding;
  final double? bottomPadding;
  final String? fontFamily;
  final TextDecoration? textDecoration;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          left: leftPadding ?? 0,
          right: rightPadding ?? 0,
          top: topPadding ?? 0,
          bottom: bottomPadding ?? 0),
      child: Text(
        "$text",
        textAlign: align,
        style: TextStyle(
            decoration: textDecoration,
            color: color,
            fontSize: fontSize,
            fontWeight: fontWeight,
            fontFamily: fontFamily,
            wordSpacing: wordSpacing),
      ),
    );
  }

}