import 'package:flutter/material.dart';

void main(){
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Image Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Image Demo'),
        ),
        body: Center(
          child: new Image.network(
            'https://cdn.jsdelivr.net/gh/flutterchina/website@1.0/images/favicon.png',
            fit: BoxFit.fitWidth,
          ),
        ),
      ),
    );
  }
}