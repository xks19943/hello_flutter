import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main(){
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Http Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Http Demo'),
        ),
        body: Center(
          child: new RaisedButton(
            onPressed: (){
              var url = 'http://httpbin.org/';
              http.get(Uri.parse(url)).then((response){
                print('状态： ${response.statusCode}');
                print('正文： ${response.body}');
              });
            },
            child: new Text('发送http请求'),
          ),
        ),
      ),
    );
  }
}