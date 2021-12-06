import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:translate2_0/Classes/data_model.dart';
import 'package:translate2_0/Classes/translate_class.dart';
import '../translate_language.dart';

class transList extends StatefulWidget {
  const transList({Key? key}) : super(key: key);

  @override
  _transListState createState() => _transListState();
}

class _transListState extends State<transList> {

  Color _faveColor = Colors.yellow;
  Color _notFaveColor = Colors.grey;

  Widget _displayCard(int index, BuildContext context){
    var provider = Provider.of<DataModel>(context, listen: false);

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
                    provider.history[provider.history.length - index - 1].translationSource,
                    // _items[index].text,
                    style: TextStyle(
                      fontWeight: FontWeight.w600
                    ),
                    maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    provider.history[provider.history.length - index - 1].translationText,
                    // _items[index].translatedText,
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
              icon: Icon(Icons.star),
              color: provider.history[provider.history.length - index - 1].isFavorite ? _faveColor: _notFaveColor,
              tooltip: "Add to Favourite!",
              onPressed: () {
                provider.faveoriteSpes(provider.history.length - index - 1);
              },
              // icon: Icon(
              //   _items[index].isStarred ? Icons.star : Icons.star_border,
              //   size: 23.0,
              //   color: _items[index].isStarred ? Colors.yellow : Colors.grey[700],
              // ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<DataModel>(context);

    return Expanded(
      child: ListView.builder(
          itemCount: provider.history.length,
          itemBuilder: (BuildContext ctxt, int index){
        return _displayCard(index, context);
        },
      ),
    );
  }
}
