import 'package:flutter/material.dart';
import 'package:translate2_0/Classes/language_class.dart';
import 'package:translate2_0/Screen/language_page.dart';

class Language extends StatefulWidget {

  @override
  _LanguageState createState() => _LanguageState();
}

class _LanguageState extends State<Language> {

  Language_class _firstLanguage = Language_class('en', 'English', true, true, true);
  Language_class _secondLanguage = Language_class('de', 'German', false, false, true);

  void _switchLanguage(){

    Language_class first = _firstLanguage;
    Language_class second = _secondLanguage;

    setState(() {
      _firstLanguage = second;
      _secondLanguage = first;
    });
  }

  void setLanguage(Language_class firstLan, Language_class secondLan ){
    setState(() {
      _firstLanguage = firstLan;
      _secondLanguage = secondLan;
    });

  }

  void _chooseFirstLanguage(String title, bool isAutomaticEnabled) async{
    final language = await Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => lanPage(title: title, isAutomaticEnabled: isAutomaticEnabled),
        ),
    );
    if (language != null){
      setLanguage(language, _secondLanguage);

    }
  }

  void _chooseSecondLanguage(String title, bool isAutomaticEnabled) async{
    final language = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => lanPage(title: title, isAutomaticEnabled: isAutomaticEnabled),
      ),
    );
    if (language != null){
      setLanguage(_firstLanguage, language);

    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55.0,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom: BorderSide(
            width: 0.5,
            color: Colors.grey,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[

          Expanded(
            child: Material(
              color: Colors.white,
              child: InkWell(
                onTap: () {
                    _chooseFirstLanguage("Translate from", true);
                },
                child: Center(
                  child: Text(
                  this._firstLanguage.name,
                  style: TextStyle(
                    color: Colors.blue[600],
                    fontSize: 15.0,
                ),
              ),
            ),
          ),
        ),
      ),

          Material(
            color: Colors.white,
            child: IconButton(
            icon: Icon(
              Icons.compare_arrows,
              color: Colors.grey[700],
            ),
          onPressed: () {
              _switchLanguage();
          },
        ),
      ),

          Expanded(
           child: Material(
             color: Colors.white,
             child: InkWell(
              onTap: () {
                  _chooseSecondLanguage("Translate to", true);
              },
              child: Center(
                child: Text(
                this._secondLanguage.name,
                style: TextStyle(
                  color: Colors.blue[600],
                  fontSize: 15.0,
                ),
              ),
            ),
           ),
           ),
         ),
        ],
      ),
    );
  }
}
