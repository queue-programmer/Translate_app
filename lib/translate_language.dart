import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:translate2_0/Classes/data_model.dart';

import 'ac_button.dart';

class transText extends StatefulWidget {

  @override
  _transTextState createState() => _transTextState();
}

class _transTextState extends State<transText> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<DataModel>(context, listen: false);
    return Card(
        color: Colors.white,
        margin: EdgeInsets.all(0.0),
      elevation: 2.0,
      child: Container(
        height: 150.0,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                      width: double.infinity,
                      padding: EdgeInsets.only(
                          left: 16.0,
                          right: 16.0,
                          top: 16.0
                      ),
                      child: TextField(
                        controller: provider.textEditingController,
                        maxLines: 6,
                        textInputAction: TextInputAction.done,
                        onSubmitted: (newValue){
                          print(newValue);

                          provider.translate(provider.secondLanguage.code,
                              provider.firstLanguage.code);
                        },
                      ),
                    ),
                  ),
                ),
                // Row(
                //
                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //     children: <Widget>[
                //       acButton(
                //         icon: Icons.camera_alt,
                //         text: "Camera",
                //       ),
                //       acButton(
                //         icon: Icons.chat,
                //         text: "Conversation",
                //       ),
                //       acButton(
                //         icon: Icons.mic_rounded,
                //         text: "Transcribe",
                //       ),
                //     ],
                // ),
          ],
        ),
      ),
    );
  }
}
