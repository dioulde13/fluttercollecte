import 'package:flutter/material.dart';

Widget customButton(
  VoidCallback onTap,
  String text,
  Color colorButton,
  Color colorText,
  double fontSize,
  double height,
  double width,
  BorderRadius borderRadius,
  FontWeight fontWeight,
) {
  return InkWell(
    onTap: onTap,
    child: Container(
      alignment: Alignment.center,
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: colorButton,
        borderRadius: borderRadius,
      ),
      child: Text(
        text,
        style: TextStyle(
          color: colorText,
          fontWeight: fontWeight,
          fontSize: fontSize,
        ),
      ),
    ),
  );
}
