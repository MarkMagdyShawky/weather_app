import 'package:flutter/material.dart';

Gradient LinearGradientbackground(List<Color> colors) {
  return LinearGradient(
    colors: colors,
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );
}
