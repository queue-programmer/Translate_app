import 'package:translator/translator.dart';

class Translate {
  String translationText;
  String translationSource;

  bool isFavorite;

  Translate(this.translationText, this.translationSource,[this.isFavorite = false]){
  }

  void setFavorite(){

    this.isFavorite = !this.isFavorite;
  }

  Translate.fromJson(Map<String, dynamic> json)
    : translationText = json ['translationText'],
      translationSource = json['translationSource'],
      isFavorite = json['isFavorite'];

    Map<String, dynamic> toJson() => {
      'translationText': translationText,
      'translationSource' : translationSource,
      'isFavorite' : isFavorite
  };

}