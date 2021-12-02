import 'package:flutter/cupertino.dart';
import 'package:translator/translator.dart';

import 'language_class.dart';

class DataModel extends ChangeNotifier{
  TextEditingController textEditingController = TextEditingController();

  Language_class firstLanguage = Language_class('en', 'English', true, true, true);
  Language_class secondLanguage = Language_class('de', 'German', false, false, true);

  void setLanguage(Language_class first, Language_class second){

    print(first);
    print(second);
    firstLanguage = first;
    secondLanguage = second;
    notifyListeners();
  }

  void switchLanguage(){
    Language_class first = firstLanguage;
    Language_class second = secondLanguage;

    firstLanguage = second;
    secondLanguage = first;
    notifyListeners();
  }

  GoogleTranslator translator = GoogleTranslator();

  Translation? currentTranslation = null;

  void translate(String to, String from){

    translator.translate(textEditingController.text,from: from, to: to).then((value) {
      currentTranslation = value;
      notifyListeners();
      },
    );
  }

}