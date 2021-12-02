import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:translate2_0/Classes/data_model.dart';
import 'package:translate2_0/Views/choose_language.dart';
import 'package:translate2_0/Views/list_previous_translations.dart';
import 'package:translate2_0/Views/translation_card.dart';
import 'package:translate2_0/translate_language.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<DataModel>(context);

    return Scaffold(
      body: Column(
          children: <Widget>[
          Language(),
            Container(
              margin: EdgeInsets.only(bottom:  8.0),
              child: transText(),
            ),
            if(provider.currentTranslation != null) ... [
              TranslationCard(),
            ],
            transList(),
        ],
      ),
    );
  }
}