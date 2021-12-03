import 'package:flutter/material.dart';
import 'package:translate2_0/Classes/language_class.dart';
import 'package:flutter_sticky_header/flutter_sticky_header.dart';

import '../Views/language_list.dart';



class lanPage extends StatefulWidget {
  const lanPage({Key? key, required this.title, required this.isAutomaticEnabled})
                : super(key: key);

  final String title;
  final bool isAutomaticEnabled;

  @override
  _lanPageState createState() => _lanPageState();
}


class _lanPageState extends State<lanPage> {

  final TextEditingController _searchTextController = TextEditingController();
  final List<Language_class> _language_classList = [
    Language_class('auto', 'Automatic', false, false, false),
   Language_class('af', 'Afrikaans', false, false, true),
   Language_class('sq', 'Albanian', false, false, true),
   Language_class('am', 'Amharic', false, false, false),
   Language_class('ar', 'Arabic', false, false, true),
   Language_class('hy', 'Armenian', false, false, false),
   Language_class('az', 'Azerbaijani', false, false, false),
   Language_class('eu', 'Basque', false, false, false),
   Language_class('be', 'Belarusian', false, false, true),
   Language_class('bn', 'Bengali', false, false, true),
   Language_class('bs', 'Bosnian', false, false, false),
   Language_class('bg', 'Bulgarian', false, false, true),
   Language_class('ca', 'Catalan', false, false, true),
   Language_class('ceb', 'Cebuano', false, false, false),
   Language_class('ny', 'Chichewa', false, false, false),
   Language_class('zh-cn', 'Chinese Simplified', true, false, true),
   Language_class('zh-tw', 'Chinese Traditional', false, false, true),
   Language_class('co', 'Corsican', false, false, false),
   Language_class('hr', 'Croatian', false, false, true),
   Language_class('cs', 'Czech', false, false, true),
   Language_class('da', 'Danish', false, false, true),
   Language_class('nl', 'Dutch', false, false, true),
   Language_class('en', 'English', true, true, true),
   Language_class('eo', 'Esperanto', false, false, true),
   Language_class('et', 'Estonian', false, false, true),
   Language_class('tl', 'Filipino', false, false, true),
   Language_class('fi', 'Finnish', false, false, true),
   Language_class('fr', 'French', true, true, true),
   Language_class('fy', 'Frisian', false, false, false),
   Language_class('gl', 'Galician', false, false, true),
   Language_class('ka', 'Georgian', false, false, true),
   Language_class('de', 'German', false, false, true),
   Language_class('el', 'Greek', false, false, true),
   Language_class('gu', 'Gujarati', false, false, true),
   Language_class('ht', 'Haitian Creole', false, false, true),
   Language_class('ha', 'Hausa', false, false, false),
   Language_class('haw', 'Hawaiian', false, false, false),
   Language_class('iw', 'Hebrew', false, false, true),
   Language_class('hi', 'Hindi', false, false, true),
   Language_class('hmn', 'Hmong', false, false, false),
   Language_class('hu', 'Hungarian', false, false, true),
   Language_class('is', 'Icelandic', false, false, true),
   Language_class('ig', 'Igbo', false, false, false),
   Language_class('id', 'Indonesian', false, false, true),
   Language_class('ga', 'Irish', false, false, true),
   Language_class('it', 'Italian', false, false, true),
   Language_class('ja', 'Japanese', false, false, false),
   Language_class('jw', 'Javanese', false, false, true),
   Language_class('kn', 'Kannada', false, false, true),
   Language_class('kk', 'Kazakh', false, false, false),
   Language_class('km', 'Khmer', false, false, false),
   Language_class('ko', 'Korean', false, false, true),
   Language_class('ku', 'Kurdish (Kurmanji)', false, false, false),
   Language_class('ky', 'Kyrgyz', false, false, false),
   Language_class('lo', 'Lao', false, false, false),
   Language_class('la', 'Latin', false, false, false),
   Language_class('lv', 'Latvian', false, false, true),
   Language_class('lt', 'Lithuanian', false, false, true),
   Language_class('lb', 'Luxembourgish', false, false, false),
   Language_class('mk', 'Macedonian', false, false, true),
   Language_class('mg', 'Malagasy', false, false, false),
   Language_class('ms', 'Malay', false, false, true),
   Language_class('ml', 'Malayalam', false, false, false),
   Language_class('mt', 'Maltese', false, false, true),
   Language_class('mi', 'Maori', false, false, false),
   Language_class('mr', 'Marathi', false, false, true),
   Language_class('mn', 'Mongolian', false, false, false),
   Language_class('my', 'Myanmar (Burmese)', false, false, false),
   Language_class('ne', 'Nepali', false, false, false),
   Language_class('no', 'Norwegian', false, false, true),
   Language_class('ps', 'Pashto', false, false, false),
   Language_class('fa', 'Persian', false, false, true),
   Language_class('pl', 'Polish', false, false, true),
   Language_class('pt', 'Portuguese', false, false, true),
   Language_class('ma', 'Punjabi', false, false, false),
   Language_class('ro', 'Romanian', false, false, true),
   Language_class('ru', 'Russian', false, false, true),
   Language_class('sm', 'Samoan', false, false, false),
   Language_class('gd', 'Scots Gaelic', false, false, false),
   Language_class('sr', 'Serbian', false, false, false),
   Language_class('st', 'Sesotho', false, false, false),
   Language_class('sn', 'Shona', false, false, false),
   Language_class('sd', 'Sindhi', false, false, false),
   Language_class('si', 'Sinhala', false, false, false),
   Language_class('sk', 'Slovak', false, false, true),
   Language_class('sl', 'Slovenian', false, false, true),
   Language_class('so', 'Somali', false, false, false),
   Language_class('es', 'Spanish', false, false, true),
   Language_class('su', 'Sundanese', false, false, false),
   Language_class('sw', 'Swahili', false, false, true),
   Language_class('sv', 'Swedish', false, false, true),
   Language_class('tg', 'Tajik', false, false, false),
   Language_class('ta', 'Tamil', false, false, true),
   Language_class('te', 'Telugu', false, false, true),
   Language_class('th', 'Thai', false, false, true),
   Language_class('tr', 'Turkish', false, false, true),
   Language_class('uk', 'Ukrainian', false, false, true),
   Language_class('ur', 'Urdu', false, false, true),
   Language_class('uz', 'Uzbek', false, false, false),
   Language_class('vi', 'Vietnamese', false, false, true),
   Language_class('cy', 'Welsh', false, false, true),
   Language_class('xh', 'Xhosa', false, false, false),
   Language_class('yi', 'Yiddish', false, false, false),
   Language_class('yo', 'Yoruba', false, false, false),
   Language_class('zu', 'Zulu', false, false, false),
  ];

  @override
  void initState() {
    super.initState();


    if (!this.widget.isAutomaticEnabled) {
      var automaticElement = this
          ._language_classList
          .where((language) => language.code == 'auto')
          .toList()[0];
      this._language_classList.remove(automaticElement);
    }
  }

  _sendBackLanguage(Language_class language) {
    Navigator.pop(context, language);

  }

  Widget? _displayDeleteTextIcon() {
    if (this._searchTextController.text.length > 0) {
      return IconButton(
        icon: Icon(Icons.close),
        color: Colors.grey,
        onPressed: () {
          setState(() {
            _searchTextController.text = "";
          });
        },
      );
    } else {
      return null;
    }
  }


  Widget _displayTheRightList() {
    if (this._searchTextController.text == "") {
      return this._displayListWithHeaders();
    } else {
      return this._displaySearchedList();
    }
  }

  Widget _displaySearchedList() {
    List<Language_class> searchedList = this
        ._language_classList
        .where((e) => e.name
        .toLowerCase()
        .contains(this._searchTextController.text.toLowerCase()))
        .toList();

    return Expanded(
      child: ListView.builder(
        itemCount: searchedList.length,
        itemBuilder: (BuildContext ctxt, int index) {
          return LanguageListElement(
            language: searchedList[index],
            onSelect: this._sendBackLanguage,
          );
        },
      ),
    );
  }

  Widget _displayListWithHeaders() {
    List<Language_class> recentLanguages =
    this._language_classList.where((e) => e.isRecent).toList();

    // Render
    return Expanded(
      child: CustomScrollView(
        slivers: <Widget>[
          SliverStickyHeader(
            header: Container(
              height: 60.0,
              color: Colors.blue[600],
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              alignment: Alignment.centerLeft,
              child: Text(
                'Recent Languages',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                    (context, i) => LanguageListElement(
                  language: recentLanguages[i],
                  onSelect: this._sendBackLanguage,
                ),
                childCount: recentLanguages.length,
              ),
            ),
          ),
          SliverStickyHeader(
            header: Container(
              height: 60.0,
              color: Colors.blue[600],
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              alignment: Alignment.centerLeft,
              child: Text(
                'All languages',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                    (context, i) => LanguageListElement(
                  language: this._language_classList[i],
                  onSelect: this._sendBackLanguage,
                ),
                childCount: this._language_classList.length,
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.widget.title),
        elevation: 0.0,
      ),
      body: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(
              top: 12.0,
              bottom: 12.0,
              left: 8.0,
              right: 8.0,
            ),
            child: TextField(
              controller: this._searchTextController,
              onChanged: (text) {
                setState(() {});
              },
              decoration: InputDecoration(
                hintText: "Search",
                border: InputBorder.none,
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue)),
                prefixIcon: Icon(
                  Icons.search,
                  size: 24.0,
                  color: Colors.grey,
                ),
                suffixIcon: this._displayDeleteTextIcon(),
              ),
            ),
          ),
          this._displayTheRightList(),
        ],
      ),
    );
  }
}