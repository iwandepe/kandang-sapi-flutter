import 'package:flutter/material.dart';

import 'package:kadang_sapi_flutter/R.dart';
import 'package:kadang_sapi_flutter/detail.dart';

class GalleryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(title: Text('Cow Gallery')),
      body: GridView.count(
        crossAxisCount: 2,
        children: List.generate(
          4,
          (index) {
            return AspectRatio(
              aspectRatio: 3 / 2,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DetailPage(
                                id: index,
                              )));
                },
                child: Container(
                  margin: EdgeInsets.all(10),
                  width: double.infinity,
                  color: Theme.of(context).accentColor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      AspectRatio(
                        aspectRatio: 4 / 3,
                        child: Image.asset(
                            "assets/img/cow/${R.cowList[index]['img']}.jpg"),
                      ),
                      Text("${R.cowList[index]['name']}",
                          style: TextStyle(color: Colors.white)),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
