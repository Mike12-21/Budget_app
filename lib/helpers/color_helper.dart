import 'package:flutter/material.dart';

Color getColor(BuildContext context, double percent) {
  if (percent > 0.50) {
    return Theme.of(context).primaryColor;
  } else {
    return Colors.orangeAccent;
  }
  return Colors.red;
}
