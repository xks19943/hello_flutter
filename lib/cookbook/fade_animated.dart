import 'package:flutter/material.dart';

class FadeAnimatedApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new FadeAnimatedAppState();
  }

}

//一个按钮点击是否显示和隐藏盒子
class FadeAnimatedAppState extends State<FadeAnimatedApp> {
  bool _visible = true;
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('FadeInAndOutAnimatedApp'),
        ),
        body: new Center(
          child: new AnimatedOpacity(
            opacity: _visible ? 1.0 : 0.0,
            duration: new Duration(milliseconds: 500),
            child: new Container(
              width: 200.0,
              height: 200.0,
              color: Colors.green,
            ),
          ),
        ),
        floatingActionButton: new FloatingActionButton(
          onPressed: (){
            setState(() {
              _visible = !_visible;
            });
          },
          tooltip: 'Toggle Opacity',
          child: new Icon(Icons.flip),
        ),
      ),
    );
  }
}


void main(){
  runApp(new FadeAnimatedApp());
}