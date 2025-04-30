import 'package:flutter/material.dart';
import 'package:nz/ui/theme/nz_theme_controller.dart';
import 'package:nz/ui/theme/nz_theme_data.dart';

class NzTheme extends InheritedWidget {
  const NzTheme({super.key, required super.child, required this.nzThemeController});

  final NzThemeController nzThemeController;

  static NzTheme? maybeOf(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<NzTheme>();

  static NzTheme of(BuildContext context) {
    final NzTheme? result = maybeOf(context);
    assert(result != null, 'No NzTheme found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(covariant NzTheme oldWidget) =>
      nzThemeController.nzThemeData != oldWidget.nzThemeController.nzThemeData;
}

// Helper function
extension LanguageHelper on BuildContext {
  NzThemeData theme() {
    final themeController = NzTheme.of(this).nzThemeController;
    return themeController.nzThemeData;
  }
}