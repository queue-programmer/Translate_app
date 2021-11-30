import 'package:flutter/material.dart';
import 'package:translate2_0/main_page.dart';


void main() => runApp(TranslateApp());

class TranslateApp extends StatelessWidget {
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Google Translate',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Colors. blue[600],
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


// void main() => runApp(MyApp());
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Google Translate',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//         primaryColor: Colors.blue[600],
//       ),
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Google Translate'),
//           elevation: 0.0,
//         ),
//         body: Center(
//           child: Text("We are going to translate everything !"),
//         ),
//       ),
//     );
//   }
// }


// void main() {
//   runApp(MaterialApp(
//     home:  TranslatorApp(),
//   ));
// }
//
//
// class TranslatorApp extends StatefulWidget {
//   @override
//   _TranslatorAppState createState() => _TranslatorAppState();
// }
//
// class _TranslatorAppState extends State<TranslatorApp>{
//   @override
//   Widget build(BuildContext context) {
//     return Home();
//   }
// }