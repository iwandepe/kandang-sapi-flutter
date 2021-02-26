import 'package:flutter/material.dart';
import 'package:kadang_sapi_flutter/dictdetail.dart';
import 'package:kadang_sapi_flutter/R.dart';
import 'package:kadang_sapi_flutter/drawer.dart';

class DictionaryPage extends StatelessWidget {
  List<String> items = List<String>.generate(20, (index) => 'Item $index');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).accentColor,
      drawer: DrawerComponent(),
      appBar: AppBar(
        shadowColor: Colors.transparent,
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.25,
            child: Stack(
              children: [
                Container(
                  // color: Theme.of(context).primaryColor,
                  color: Theme.of(context).primaryColor,
                  width: double.infinity,
                  height:
                      MediaQuery.of(context).size.height * (0.25 - 0.065 / 2),
                ),
                Container(
                  padding: EdgeInsets.only(top: 20),
                  alignment: Alignment.topCenter,
                  child: Text(
                    "Dictionary",
                    style: TextStyle(color: Colors.white, fontSize: 28),
                  ),
                ),
                Positioned.fill(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        height: MediaQuery.of(context).size.height * 0.065,
                        width: MediaQuery.of(context).size.width * 0.92,
                        child: TextFormField(
                          textAlignVertical: TextAlignVertical.center,
                          style: TextStyle(fontSize: 20),
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.search),
                            hintText: 'Search here',
                          ),
                        )),
                  ),
                )
              ],
            ),
          ),

          // Give distance search and item
          SizedBox(height: 10),

          // Dictionary list item
          Expanded(
            child: ListView.builder(
              itemCount: R.livestockTermList.length,
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                    // borderRadius: BorderRadius.all(Radius.circular(2)),
                    border: Border(
                      top: BorderSide(
                          width: 1, color: Colors.grey.withOpacity(0.3)),
                      bottom: BorderSide(
                          width: 1, color: Colors.grey.withOpacity(0.3)),
                    ),
                    color: Theme.of(context).accentColor,
                  ),
                  child: ListTile(
                    title: Text(
                      R.livestockTermList[index]['term'],
                      style: TextStyle(color: Colors.white),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DictionaryDetailPage(
                            id: index,
                          ),
                        ),
                      );
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
