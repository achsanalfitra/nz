import 'package:flutter/material.dart';

class NzThemeData {
  final NzColourPalette background;
  final NzColourPalette ink;
  final NzColourPalette accent;
  final NzColourPalette positive;
  final NzColourPalette negative;


  NzThemeData({
    required this.background,
    required this.ink,
    required this.accent,
    required this.positive,
    required this.negative,
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