import 'package:flutter/material.dart';

void main(){
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'FittedBox Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('FittedBox Demo'),
        ),
        body: new Container(
          color: Colors.grey,
          width: 250.0,
          height: 250.0,
          child: new FittedBox(
            fit: BoxFit.cover,
            alignment: Alignment.bottomRight,
            child: new Container(
              color: Colors.deepOrange,
              child: new Text('缩放布局'),
            ),
          ),
        ),
      ),
    );
  }
}


