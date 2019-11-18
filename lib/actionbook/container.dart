import 'package:flutter/material.dart';

void main(){
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Container Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Container Demo'),
        ),
        body: Center(
          /*child: new Container(
            width: 200.0,
            height: 200.0,
            decoration: new BoxDecoration(
              color: Colors.lightBlue,
              borderRadius: const BorderRadius.all(const Radius.circular(8.0)),
              border: new Border.all(
                width: 10.0,
                color: Colors.grey,
                style: BorderStyle.solid,
              )
            ),
            child: new Center(
              child: new Text(
                'flutter',
                textAlign: TextAlign.center,
              ),
            )
          ),*/

          child: new Container(
            constraints: new BoxConstraints.expand(
              height: Theme.of(context).textTheme.display1.fontSize * 1.1 + 200.0
            ),
            padding: const EdgeInsets.all(8.0),
            color: Colors.teal.shade700,
            alignment: Alignment.center,
            child: new Text(
              'hello',
              style: Theme.of(context).textTheme.display1.copyWith(color: Colors.white),
            ),
            foregroundDecoration: new BoxDecoration(
              image: new DecorationImage(
                image: AssetImage('images/pic01.jpg'),
                fit: BoxFit.cover

              )
            ),
            transform: Matrix4.rotationZ(0.1),
          ),
        ),
      ),
    );
  }
}