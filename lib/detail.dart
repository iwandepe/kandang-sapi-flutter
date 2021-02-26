import 'package:flutter/material.dart';

import 'package:kadang_sapi_flutter/R.dart';
import 'package:kadang_sapi_flutter/R.dart';

class DetailPage extends StatelessWidget {
  final int id;

  DetailPage({this.id});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).accentColor,
      appBar: AppBar(title: Text('Detail')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset("assets/img/cow/${R.cowList[id]['img']}.jpg"),
          Container(
            margin: EdgeInsets.all(20),
            alignment: Alignment.centerLeft,
            child: Text(R.cowList[id]['name'],
                style: TextStyle(
                    fontSize: 28,
                    color: Colors.white,
                    fontWeight: FontWeight.bold)),
          ),
          Container(
              margin: EdgeInsets.only(left: 15, right: 15),
              child: Text(R.cowList[id]['detail'],
                  textAlign: TextAlign.justify,
                  style: TextStyle(color: Colors.white, fontSize: 18))),
        ],
      ),
    );
  }
}
