import 'package:flutter/material.dart';

void main(){
  return runApp(new RotatedBoxApp());
}


class RotatedBoxApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('RotatedBoxApp'),
        ),
        body: new Center(
          child: new RotatedBox(
            quarterTurns: 1, //旋转次数 一次为90度
            child: new Text(
              'RotatedBox旋转盒子',
              style: TextStyle(fontSize: 28.0),
            ),
          )
        ),
      ),
    );
  }

}