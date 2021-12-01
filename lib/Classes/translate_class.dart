
class Translate {
  late String text;
  late String translatedText;
  late bool isStarred;

  Translate(String text, String translatedText, bool isStarred){
    this.text = text;
    this.translatedText = translatedText;
    this.isStarred = isStarred;
  }
}