
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
}