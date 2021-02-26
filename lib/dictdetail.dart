import 'package:flutter/material.dart';

import 'package:kadang_sapi_flutter/R.dart';

class DictionaryDetailPage extends StatelessWidget {
  final int id;

  DictionaryDetailPage({this.id});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        shadowColor: Colors.transparent,
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).accentColor,
          borderRadius: BorderRadius.all(Radius.circular(5)),
        ),
        margin: EdgeInsets.only(top: 10),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding:
                  EdgeInsets.only(left: 10, right: 10, top: 20, bottom: 20),
              width: double.infinity,
              alignment: Alignment.centerLeft,
              child: Text(
                R.livestockTermList[id]['term'],
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 10),
              width: double.infinity,
              alignment: Alignment.bottomLeft,
              child: Text(
                'Arti',
                style:
                    TextStyle(fontStyle: FontStyle.italic, color: Colors.grey),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Text(
                R.livestockTermList[id]['meaning'],
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
