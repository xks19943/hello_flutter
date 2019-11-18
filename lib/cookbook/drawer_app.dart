import 'package:flutter/material.dart';

void main(){
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  final appTitle = 'Drawer Demo';
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: appTitle,
      home: new MyHomePage(title:appTitle),
    );
  }

}

class MyHomePage extends StatelessWidget{
  final String title;


  MyHomePage({Key key, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(title: new Text(title)),
      body: new SnackBarPage(),
      drawer: new Drawer(
        child: new ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            new DrawerHeader(
              child: new Text('Drawer Header'),
              decoration: BoxDecoration(
                color: Colors.blue
              ),
            ),
            new ListTile(
              title: new Text('Item 1'),
              onTap: (){
                Navigator.pop(context);
              },
            ),
            new ListTile(
              title: new Text(
                'Item 2',
                style: TextStyle(
                  fontFamily: 'Raleway'
                ),
              ),

              onTap: (){
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }

}

class SnackBarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Center(
      child: new RaisedButton(
        child: new Text('Show SnackBar'),
        color: Theme.of(context).primaryColor,
        textColor: Colors.white,
        onPressed: (){
          final snackBar = new SnackBar(
            content: new Text('Yay! A SnackBar!'),
            action: SnackBarAction(
              label: 'Undo',
              onPressed: (){

              }
            ),
          );
          // 显示SnackBar
          Scaffold.of(context).showSnackBar(snackBar);
        },
      )
    );
  }

}