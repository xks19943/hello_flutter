import 'package:flutter/material.dart';

void main(){
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'OverflowBox Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('OverflowBox Demo'),
        ),
        body: new Container(
          color: Colors.green,
          width: 200.0,
          height: 200.0,
          padding: EdgeInsets.all(5.0),
          child: new OverflowBox(
            alignment: Alignment.topLeft,
            maxWidth: 300.0,
            maxHeight: 300.0,
            child: CircleAvatar(
              backgroundImage: AssetImage('images/pic15.jpg'),
              radius: 100.0,
            ),
          ),
        ),
      ),
    );
  }
}