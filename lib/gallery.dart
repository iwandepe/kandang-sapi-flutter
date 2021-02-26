import 'package:flutter/material.dart';

class GalleryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Cow Gallery')),
      body: GridView.count(
        crossAxisCount: 2,
        children: List.generate(
          100,
          (index) {
            return Center(
              child: Text('Item $index'),
            );
          },
        ),
      ),
    );
  }
}
