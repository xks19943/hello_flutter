import 'package:flutter/material.dart';

void main(){
  runApp(new MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Flutter'),
        ),
        body: new Stack(
          children: <Widget>[
            //左上角
            Align(
              alignment: new FractionalOffset(0.0, 0.0),
              child: new Image.asset('images/pic5.jpg',width: 120.0,height: 120.0),
            ),
            //右上角
            Align(
              alignment: new FractionalOffset(0.5, 0.0),
              child: new Image.asset('images/pic6.jpg',width: 120.0,height: 120.0),
            ),
            Align(
              alignment: new FractionalOffset(1.0, 0.0),
              child: new Image.asset('images/pic7.jpg',width: 120.0,height: 120.0),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: new Image.asset('images/pic8.jpg',width: 120.0,height: 120.0),
            ),
            Align(
              alignment: Alignment.center,
              child: new Image.asset('images/pic9.jpg',width: 120.0,height: 120.0),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: new Image.asset('images/pic10.jpg',width: 120.0,height: 120.0),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: new Image.asset('images/pic11.jpg',width: 120.0,height: 120.0),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: new Image.asset('images/pic12.jpg',width: 120.0,height: 120.0),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: new Image.asset('images/pic13.jpg',width: 120.0,height: 120.0),
            ),
          ],
        ),
      ),
    );
  }
}