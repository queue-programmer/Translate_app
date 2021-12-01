import 'package:flutter/material.dart';
import 'package:translate2_0/Screen/main_page.dart';


void main() => runApp(TranslateApp());

class TranslateApp extends StatelessWidget {
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Google Translate',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Colors.blue[600],
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Google Translate'),
          elevation: 0.0,
        ),
        body: HomePage(title: 'GoogleTranslate'),
      ),
    );
  }
}