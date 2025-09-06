import 'package:flutter/material.dart';

Widget customDivider({
  double thickness = 3.0,
  double endIndent = 190,
  Color color = Colors.black}) {
  return Divider(
    color: color,
    thickness: thickness,
    endIndent: endIndent,
  );
}
