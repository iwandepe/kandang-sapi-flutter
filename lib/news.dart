import 'package:flutter/material.dart';

import 'package:kadang_sapi_flutter/R.dart';
import 'package:kadang_sapi_flutter/newsdetail.dart';

class NewsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        shadowColor: Colors.transparent,
        title: Text("Berita"),
      ),
      body: ListView.builder(
          itemCount: R.newsList.length,
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(color: Theme.of(context).accentColor),
              margin: EdgeInsets.only(left: 10, right: 10, top: 10),
              height: MediaQuery.of(context).size.height * 0.15,
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    child: AspectRatio(
                      aspectRatio: 1,
                      child: Image(
                        image: AssetImage('assets/img/news/${index}.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      child: Container(
                        alignment: Alignment.topLeft,
                        padding: EdgeInsets.all(5),
                        child: Text(
                          R.newsList[index]['title'],
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => NewsDetailPage(id: index),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
