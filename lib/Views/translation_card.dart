import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:translate2_0/Classes/data_model.dart';

class TranslationCard extends StatefulWidget {
  const TranslationCard({Key? key}) : super(key: key);

  @override
  _TranslationCardState createState() => _TranslationCardState();
}

class _TranslationCardState extends State<TranslationCard> {

  Color _faveColor = Colors.yellow;
  Color _notFaveColor = Colors.grey;

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<DataModel>(context);

    return Card(
      color: Colors.blue[600],
      child: Container(
        padding: EdgeInsets.only(left: 10.0),
        height: 1/5 * MediaQuery.of(context).size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(provider.currentTranslation!.targetLanguage.name),
                Spacer(),
                IconButton(
                  icon: Icon(Icons.star),
                  color: provider.currentTranslationClass!.isFavorite ? _faveColor:
                      _notFaveColor,
                  tooltip: "Add to Favourite!",

                  onPressed: () {
                    provider.favoriteCheck();
                  },
                ),
              ],
            ),
            Text(provider.currentTranslation!.text),
            Spacer(),
            Text(provider.currentTranslation!.source),
            Spacer()
          ],
        ),
      ),
    );
  }
}
