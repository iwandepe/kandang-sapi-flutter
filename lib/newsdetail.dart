import 'package:flutter/material.dart';

import 'package:kadang_sapi_flutter/R.dart';

class NewsDetailPage extends StatelessWidget {
  final int id;

  NewsDetailPage({this.id});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        shadowColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Image.asset('assets/img/news/${id}.jpg'),
            Container(
              padding:
                  EdgeInsets.only(top: 20, bottom: 20, left: 10, right: 10),
              child: Text(
                R.newsList[id]['title'],
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Text(
                R.newsList[id]['content'],
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
