import 'package:flutter/material.dart';
import 'package:nz/ui/theme/nz_theme_data.dart';
import 'package:nz/ui/theme/nz_theme_model.dart';

class NzThemeController with ChangeNotifier {
  final String themeName;

  NzThemeController({required this.themeName});

  NzThemeData nzThemeData = NzThemeData(
    primaryColour: Colors.black26,
    secondaryColour: Colors.black26,
  );

  void changeTheme(String themeName) {
  nzThemeData = NzThemeModel.generate(themeName: themeName);
  notifyListeners();
  }
}
