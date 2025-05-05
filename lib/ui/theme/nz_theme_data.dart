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
    this.colour100,
    this.colour300,
    this.colour500,
    this.colour700,
    this.colour900,
  });
}