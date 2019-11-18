import 'package:flutter/material.dart';

void main(){
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Icon Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Icon Demo'),
        ),
        body: Center(
          child: new Column(
            children: <Widget>[
              new Icon(
                Icons.phone,
                color: Colors.green[500],
                size: 80.0,
              ),
              new IconButton(
                color: Colors.teal[500],
                iconSize: 48.0,
                icon: new Icon(
                  Icons.call,
                ),
                tooltip: '按下操作',
                onPressed: (){
                  print('按下操作');
                }
              ),
              new RaisedButton(
                onPressed: (){
                  print('按下了按钮');
                },
                child: new Text(
                  '点击一下'
                ),
              ),
              new RaisedButton(
                onPressed: null,
                child: new Text(
                  '没有点击的按钮'
                ),
              ),
              new RaisedButton(
                onPressed: (){
                  print('渐变按钮');
                },
                textColor: Colors.white,
                padding: const EdgeInsets.all(0.0),
                child: new Container(
                  decoration: new BoxDecoration(
                    gradient: new LinearGradient(
                      colors: <Color>[
                        Color(0xFF0D47A1),
                        Color(0xFF1976D2),
                        Color(0xFF42A5F5),
                      ]
                    )
                  ),
                  padding: const EdgeInsets.all(10.0),
                  child: new Text(
                    'Gradient Button',
                    style: new TextStyle(fontSize: 20)
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}