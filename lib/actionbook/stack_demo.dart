import 'package:flutter/material.dart';

void main(){
  return runApp(MyApp());
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
        body: Center(
          /*child: new Stack(
            alignment: Alignment.bottomCenter,
            children: <Widget>[
              new CircleAvatar(
                backgroundImage: new AssetImage('images/pic1.jpg'),
                radius: 100.0,
              ),
              new Container(
                decoration: new BoxDecoration(
                  color: Colors.black38
                ),
                child: new Text(
                  '小猪猪',
                  style: new TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                  ),
                ),
              ),
              new Positioned(
                top: 100,
                left: 100,
                child: new Text(
                  '好好学习',
                  style: new TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'serif',
                    color: Colors.white
                  ),
                ),
              )
            ],
          ),*/
          child: new IndexedStack(
            index: 2,
            alignment: Alignment.bottomCenter,
            children: <Widget>[
              new CircleAvatar(
                backgroundImage: new AssetImage('images/pic1.jpg'),
                radius: 100.0,
              ),
              new Container(
                decoration: new BoxDecoration(
                  color: Colors.black38
                ),
                child: new Text(
                  '小猪猪',
                  style: new TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                  ),
                ),
              ),
              new Positioned(
                top: 100,
                left: 100,
                child: new Text(
                  '好好学习',
                  style: new TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'serif',
                    color: Colors.black38
                  ),
                ),
              )
            ],
          )
        ),
      ),
    );
  }
}