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
      home: new MyHomePage()
    );
  }
}


class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new MyHomePageState();
  }

}

class MyHomePageState extends State<MyHomePage> {

  bool offstage = true;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome to Flutter'),
      ),
      body: Center(
        child: Offstage(
          offstage: offstage,
          child: new Text(
            '我出来啦',
            style: TextStyle(
              fontSize: 36.0
            ),
          ),
        )
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: (){
          setState(() {
            offstage = !offstage;
          });
        },
        tooltip: '显示隐藏',
        child: new Icon(Icons.flip),
      ),
    );
  }

}