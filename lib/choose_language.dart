import 'package:flutter/material.dart';

class Language extends StatefulWidget {

  @override
  _LanguageState createState() => _LanguageState();
}

class _LanguageState extends State<Language> {

  String _firstLanguage = "English";
  String _secondLanguage = "French";

  void _switchLanguage(){

    String first = _firstLanguage;
    String second = _secondLanguage;

    setState(() {
      _firstLanguage = second;
      _secondLanguage = first;
    });
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
                onTap: () {},
                child: Center(
                  child: Text(
                  this._firstLanguage,
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
              onTap: () {},
              child: Center(
                child: Text(
                this._secondLanguage,
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
