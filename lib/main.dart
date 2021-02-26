import 'package:flutter/material.dart';
import 'package:kadang_sapi_flutter/detail.dart';
import 'package:kadang_sapi_flutter/dictdetail.dart';
import 'package:kadang_sapi_flutter/dictionaries.dart';
import 'package:kadang_sapi_flutter/gallery.dart';
import 'package:kadang_sapi_flutter/news.dart';
import 'package:kadang_sapi_flutter/newsdetail.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color(0xFF39424B),
        accentColor: Color(0xFF465461),
        buttonColor: Color(0xFFFF893B),
      ),
      // home: SignInPage()
      // home: SignUpPage(),
      // home: GalleryPage(),
      // home: DetailPage(),
      // home: DictionaryPage(),
      // home: DictionaryDetailPage(),
      // home: NewsDetailPage(),
      home: NewsPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
