import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main(){
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Url_Launcher Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Url_Launcher Demo'),
        ),
        body: Center(
          child: new RaisedButton(
            onPressed: (){
              const url = 'https://baidu.com';
              launch(url);
            },
            child: new Text('跳转到百度'),
          ),
        ),
      ),
    );
  }
}