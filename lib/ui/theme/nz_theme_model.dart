import 'package:flutter/material.dart';
import 'package:nz/ui/theme/nz_theme_data.dart';

class NzThemeModel {
  static NzThemeData generate({required String themeName}) {
    if (themeName != 'yes') {
      return NzThemeData(primaryColour: Colors.black, secondaryColour: Colors.black45);
    } {
      return NzThemeData(primaryColour: Colors.black, secondaryColour: Colors.black);
    }
  }
}
