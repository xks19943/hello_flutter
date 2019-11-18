import 'package:flutter/material.dart';

void main() {
  return runApp(new BoxDecorationApp());
}


class BoxDecorationApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('BoxDecorationDemo'),
        ),
        body: new SingleChildScrollView(
          child: new Column(
            children: <Widget>[
              new Container(
                width: 300.0,
                height: 300.0,
                decoration: new BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.grey,
                    width: 8.0,
                  ),
                  boxShadow: <BoxShadow>[
                    new BoxShadow(
                      color: Colors.grey,
                      blurRadius: 8.0,
                      spreadRadius: 8.0,
                      offset: Offset(-1.0, 1.0)
                    )
                  ],
                  borderRadius: BorderRadius.circular(36.0),
                  image: new DecorationImage(
                    image: ExactAssetImage('images/pic01.jpg'),
                    fit: BoxFit.cover
                  )
                ),
              ),
              new DecoratedBox(
                decoration: new BoxDecoration(
                  color: Colors.white,
                  gradient: new LinearGradient(
                    begin: new FractionalOffset(0.0, 0.5), //起始偏移量
                    end: new FractionalOffset(1.0, 0.5),
                    colors: <Color>[
                      Colors.red,
                      Colors.green,
                      Colors.green,
                      Colors.grey
                    ]
                  )
                ),
                child: new Container(
                  width: 280.0,
                  height: 280.0,
                  margin: EdgeInsets.only(top: 20.0),
                  child: new Text('LinearGradient 线性渐变效果'),
                ),
              ),
              new DecoratedBox(
                decoration: new BoxDecoration(
                  color: Colors.white,
                  gradient: new RadialGradient(
                    center: const Alignment(-0.0, -0.0),
                    radius: 0.50,
                    colors: <Color>[
                      Colors.red,
                      Colors.green,
                      Colors.green,
                      Colors.grey
                    ]
                  )
                ),
                child: new Container(
                  width: 280.0,
                  height: 280.0,
                  margin: EdgeInsets.only(top: 20.0),
                  child: new Text('LinearGradient 线性渐变效果'),
                ),
              )
            ],
          )
        ),
      ),
    );
  }

}