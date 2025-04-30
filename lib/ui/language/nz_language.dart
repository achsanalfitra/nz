import 'package:flutter/material.dart';
import 'package:nz/ui/language/nz_language_controller.dart';

class NzLanguage extends InheritedWidget {
  const NzLanguage({super.key, required super.child, required this.nzLanguageController});

  final NzLanguageController nzLanguageController;

  static NzLanguage? maybeOf(BuildContext context) => context.dependOnInheritedWidgetOfExactType<NzLanguage>();

  static NzLanguage? of(BuildContext context) {
    final NzLanguage? result = maybeOf(context);
    assert(result != null, 'No NzLanguage found in context');
    return result!;
  } 

  @override
  bool updateShouldNotify(covariant NzLanguage oldWidget) => oldWidget.nzLanguageController.nzLanguageData != nzLanguageController.nzLanguageData;
}

// Helper function
extension LanguageHelper on BuildContext {
  String translate(String englishText) {
    final languageController = NzLanguage.of(this)!.nzLanguageController;
    return languageController.nzLanguageData.defaultTranslate(englishText);
  }
}