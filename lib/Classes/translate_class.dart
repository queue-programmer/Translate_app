
import 'package:translator/translator.dart';

class Translate {
  Translation translation;

  bool isFavorite = false;
  // late String text;
  // late String translatedText;
  // late bool isStarred;

  Translate(this.translation){

    // this.text = text;
    // this.translatedText = translatedText;
    // this.isStarred = isStarred;
  }

  void setFavorite(){

    this.isFavorite = !this.isFavorite;
  }
}