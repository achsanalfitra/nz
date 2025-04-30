import 'package:nz/ui/language/nz_language_data.dart';

class NzLanguageModel {
  static NzLanguageData translate({String languageName = 'default'}) {
    if (languageName == 'default') {
      return NzLanguageData(defaultTranslate: (englishText) => englishText);
    }
    {
      return NzLanguageData(
        defaultTranslate: (englishText) => 'No changing the default',
      );
    }
  }
}
