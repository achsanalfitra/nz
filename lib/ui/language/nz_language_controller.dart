
import 'package:flutter/widgets.dart';
import 'package:nz/ui/language/nz_language_data.dart';
import 'package:nz/ui/language/nz_language_model.dart';

class NzLanguageController with ChangeNotifier {
  NzLanguageController();

  NzLanguageData nzLanguageData = NzLanguageModel.translate();


  void changeLanguage(String languageName) {
     notifyListeners();
  }
}