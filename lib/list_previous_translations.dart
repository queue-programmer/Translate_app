import 'package:flutter/material.dart';
import 'package:translate2_0/translate_class.dart';
import 'translate_language.dart';

class transList extends StatefulWidget {
  const transList({Key? key}) : super(key: key);

  @override
  _transListState createState() => _transListState();
}

class _transListState extends State<transList> {
  List<Translate> _items = [];

  Widget _displayCard(int index){
    return Card(
      child: Container(
        height: 80.0,
        padding: EdgeInsets.only(left: 16.0, top: 16.0, bottom: 16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text(
                    _items[index].text,
                    style: TextStyle(
                      fontWeight: FontWeight.w600
                    ),
                    maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    _items[index].translatedText,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                    ),
                    maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.star_border,
                size: 23.0,
                color: Colors.grey[700],
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          itemCount: _items.length,
          itemBuilder: (BuildContext ctxt, int index){
        return _displayCard(index);
        },
      ),
    );
  }
}
