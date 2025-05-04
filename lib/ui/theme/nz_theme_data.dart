import 'package:flutter/material.dart';

class NzThemeData {
  final NzColourPalette primaryColour;
  final NzColourPalette secondaryColour;

  NzThemeData({
    required this.primaryColour,
    required this.secondaryColour,
  });
}

class NzColourPalette {
  final Color? colour100;
  final Color? colour300;
  final Color? colour500;
  final Color? colour700;
  final Color? colour900;

  NzColourPalette({
    required this.colour100,
    required this.colour300,
    required this.colour500,
    required this.colour700,
    required this.colour900,
  });
}