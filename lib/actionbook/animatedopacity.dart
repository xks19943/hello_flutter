import 'package:flutter/material.dart';

void main(){
  runApp(new AnimatedOpacityApp());
  return;
}


class AnimatedOpacityApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      home: new HomePage()
    );
  }
}


class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new HomePageState();
  }
}


class HomePageState extends State<HomePage>{
  bool _visible = true;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('淡入淡出动画'),
      ),
      body: new Center(
        child: new AnimatedOpacity(
          opacity: _visible ? 1.0 : 0.0,
          duration: new Duration(
            milliseconds: 1000
          ),
          child: new Container(
            width: 300.0,
            height: 300.0,
            color: Colors.deepPurple,
          ),
        ),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: (){
          setState(() {
            _visible = !_visible;
          });
        },
        tooltip: '显示隐藏',
        child: new Icon(Icons.flip),
      ),
    );
  }
}