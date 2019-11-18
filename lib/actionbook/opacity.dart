import 'package:flutter/material.dart';

void main(){
  return runApp(new OpacityApp());
}


class OpacityApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('OpacityDemo'),
        ),
        body: new Center(
          child: new Opacity(
            opacity: 0.1,
            child: new Container(
              width: 250.0,
              height: 250.0,
              decoration: new BoxDecoration(
                color: Colors.black,
              ),
              child: Text(
                '不透明度为0.1',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28.0
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

}