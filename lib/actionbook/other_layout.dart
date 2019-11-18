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
        body: new Container(
          child: Column(
            children: <Widget>[
              Container(
                color: Colors.grey,
                child: Transform(
                  alignment: Alignment.topRight,
                  transform: Matrix4.rotationZ(0.3),
                  child: Container(
                    padding: EdgeInsets.all(8.0),
                    color: Color(0xFFE8581C),
                    child: Text('Transform矩阵转换'),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  new Baseline(
                    baseline: 80.0,
                    baselineType: TextBaseline.alphabetic,
                    child: new Text(
                      'AaBbCc',
                      style: new TextStyle(
                        fontSize: 18.0,
                        textBaseline: TextBaseline.alphabetic
                      ),
                    ),
                  ),
                  new Baseline(
                    baseline: 80.0,
                    baselineType: TextBaseline.alphabetic,
                    child: new Container(
                      width: 40.0,
                      height: 40.0,
                      color: Colors.green,
                    ),
                  ),
                  new Baseline(
                    baseline: 80.0,
                    baselineType: TextBaseline.alphabetic,
                    child: new Text(
                      'DdEeFf',
                      style: new TextStyle(
                        fontSize: 26.0,
                        textBaseline: TextBaseline.alphabetic
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        )
      ),
    );
  }
}