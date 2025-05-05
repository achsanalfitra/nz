import 'package:flutter/material.dart';
import 'package:nz/ui/theme/nz_theme_data.dart';

class NzThemeModel {
  static NzThemeData generate({required String themeName}) {
    if (themeName != 'yes') {
      return lightMode;
    }
    {
      return lightMode;
    }
  }
}

var lightMode = NzThemeData(
  background: NzColourPalette(colour100: const Color(0xFFFBFAF7)),
  ink: NzColourPalette(
    colour300: const Color(0xFFC4C4CA),
    colour500: const Color(0xFF97979C),
    colour700: const Color(0xFF727275),
    colour900: const Color(0xFF2E2E2F),
  ),
  accent: NzColourPalette(
    colour100: const Color(0xffF6F1EB),
    colour300: const Color(0xffD9C4AB),
    colour500: const Color(0xffA6855E),
    colour700: const Color(0xff775C3D),
  ),
  positive: NzColourPalette(
    colour300: const Color(0xFFB1BCFF),
    colour500: const Color(0xFF7489FF),
    colour700: const Color(0xFF3654FF),
    colour900: const Color(0xFF2842D8),
  ),
  negative: NzColourPalette(
    colour300: const Color(0xFFFFB2B4),
    colour500: const Color(0xFFFF787A),
    colour700: const Color(0xFFD50004),
    colour900: const Color(0xFFAC0003),
  ),
);
