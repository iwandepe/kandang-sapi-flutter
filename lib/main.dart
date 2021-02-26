import 'package:flutter/material.dart';
import 'package:learn_flutter_week_three/gallery.dart';
import 'package:learn_flutter_week_three/signin.dart';
import 'package:learn_flutter_week_three/signup.dart';

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
      home: GalleryPage(),
    );
  }
}
