import 'package:flutter/material.dart';

void main(){
  runApp(new MyApp());
  return;
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    // TODO: implement build
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue
      ),
      home: new MyHomePage(
        title: 'Flutter Demo Home Page',
      ),
    );
  }

}

class MyHomePage extends StatefulWidget {
  final String title;

  MyHomePage({Key key, @required this.title}) : super(key:key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new MyHomeState();
  }

}

class MyHomeState extends State<MyHomePage> {

  int counter = 0;


  void incrementCounter() {
    setState(() {
      counter ++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text('You have pushed the button this many times : '),
            new Text(
              '$counter',
              style: Theme.of(context).textTheme.display1,
            )
          ],
        ),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: incrementCounter,
        tooltip: 'increment',
        child: new Icon(Icons.add),
      ),
    );
  }

}