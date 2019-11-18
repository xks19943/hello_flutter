import 'package:flutter/material.dart';

void main(){
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: '宽高布局控件Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('宽高布局控件Demo'),
        ),
        body: new Column(
          children: <Widget>[
            new SizedBox(
              width: 200.0,
              height: 300.0,
              child: const Card(
                child: Text('SizedBox'),
              ),
            ),
            //用于限制控件的最小最大宽高
            new ConstrainedBox(
              constraints: new BoxConstraints(
                minWidth: 100.0,
                minHeight: 100.0,
                maxWidth: 200.0,
                maxHeight: 200.0,
              ),
              child: new Container(
                width: 20.0,
                height: 20.0,
                color: Colors.green,
              ),
            ),
//            new LimitedBox(
//              maxWidth: 150.0,
//              child: new Container(
//                color: Colors.lightGreen,
//                width: 250.0,
//                height: 50.0,
//              ),
//            ),
//            new Container(
//              height: 200.0,
//              child: new AspectRatio(
//                aspectRatio: 1.5,
//                child: new Container(
//                  color: Colors.green,
//                ),
//              ),
//            ),
            new Container(
              color: Colors.blueGrey,
              width: 200.0,
              height: 200.0,
              //根据现有空间来调整child的尺寸
              child: new FractionallySizedBox(
                alignment: Alignment.topLeft,
                widthFactor: 0.5,
                heightFactor: 1.5,
                child: new Container(
                  color: Colors.green,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}