import 'package:flutter/material.dart';

Gradient LinearGradientbackground(Color begainColor, Color endColor) {
  return LinearGradient(
    colors: [begainColor, endColor],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );
}
