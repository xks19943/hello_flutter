import 'package:flutter/material.dart';
import 'dart:async';

class LoadingPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new LoadingPageState();
  }
}

class LoadingPageState extends State<LoadingPage> {
  bool _visible = false;

  @override
  void initState() {
    super.initState();

    new Future.delayed(new Duration(milliseconds: 200), (){
      setState(() {
        _visible = true;
      });
    });

    //在加载页面停顿3秒
    new Future.delayed(new Duration(seconds: 3), (){
      print('Flutter 即时通讯 APP 界面实现 ....');
      Navigator.of(context).pushReplacementNamed('app');
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Center(
      child: new AnimatedOpacity(
        opacity: _visible ? 1.0 : 0.0,
        duration: new Duration(
          milliseconds: 1000
        ),
        child: new Container(
          child: new Image.asset(
            'images/loading.jpeg',
            fit: BoxFit.cover,
          ),
        )
      ),
    );
  }

}