import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:translate2_0/Classes/translate_class.dart';
import 'package:translator/translator.dart';
import 'language_class.dart';

class DataModel extends ChangeNotifier{
  TextEditingController textEditingController = TextEditingController();

  Language_class firstLanguage = Language_class('en', 'English', true, true, true);
  Language_class secondLanguage = Language_class('de', 'German', false, false, true);

  DataModel(){
    // getHistoryFromLocalSave();
  }

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
  Translate? currentTranslationClass = null;

  List<Translate> history = [];

  void onFlyTrans(String string){
    Future.delayed(Duration(milliseconds: 500), (){
      translate(secondLanguage.code, firstLanguage.code);
    });
  }

  void translate(String to, String from){

    translator.translate(textEditingController.text,from: from, to: to).then((value) {
      currentTranslation = value;
      currentTranslationClass = Translate(currentTranslation!.text, currentTranslation!.source);
      notifyListeners();
      },
    );
  }

  void addToHistory(){
    if(!history.contains(currentTranslationClass)){
      history.add(currentTranslationClass!);
    }
    jsonTest();
    // getHistoryFromLocalSave();
    notifyListeners();
  }

  void favoriteCheck(){
    currentTranslationClass!.setFavorite();
    if(!history.contains(currentTranslationClass)){
      history.add(currentTranslationClass!);
    }
    // getHistoryFromLocalSave();
    notifyListeners();
  }

  void faveoriteSpes(int index){
    history[index].setFavorite();
    jsonTest();
    // getHistoryFromLocalSave();
        notifyListeners();
  }

  void jsonTest(){
    var json = jsonEncode(history.map((e) => e.toJson()).toList());
    print(json);

    var jsonStringHistory = jsonDecode(json) as Iterable<dynamic>;

    var newHistory = List<Translate>.of(jsonStringHistory.map((e) => Translate.fromJson(e)));
    print(newHistory);
  }

  void localSave()async{
    final prefs = await SharedPreferences.getInstance();

    var json = jsonEncode(history.map((e) => e.toJson()).toList());

    prefs.setString('HistoricalKey', json);
  }

  void getHistoryFromLocalSave()async{
    final prefs = await SharedPreferences.getInstance();

    var json = prefs.getString('HistoricalKey');
    if( json != null && json != ""){
      var jsonStringHistory = jsonDecode(json) as Iterable<dynamic>;

      var history = List<Translate>.of(jsonStringHistory.map((e) => Translate.fromJson(e)));
    }
  }
}