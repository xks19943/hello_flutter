import 'package:flutter/material.dart';

void main(){
  runApp(new HeroApp());
  return;
}


class HeroApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      routes: <String, WidgetBuilder>{
        '/SecondPage': (context)=> new SecondPage(),
      },
      home: new HomePage()
    );
  }
}


class HomePage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('页面切换动画'),
      ),
      body: new Center(
        child: new GestureDetector(
          child: new Hero(
            tag: '第一张图片',
            child: new Image.network(
              'https://desk-fd.zol-img.com.cn/t_s960x600c5/g5/M00/01/0E/ChMkJ1bKwfOIIM1iAAPP2E7Y8gUAALGgQO1m68AA8_w91.jpeg',
            ),
          ),
          onTap: (){
            Navigator.pushNamed(context, '/SecondPage');
          },
        ),
      ),
    );
  }
}


class SecondPage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('页面切换动画二'),
      ),
      body: new GestureDetector(
        child: new Hero(
          tag: '第一张图片',
          child: new Image.network(
            'https://desk-fd.zol-img.com.cn/t_s960x600c5/g5/M00/01/0E/ChMkJ1bKwfOIIM1iAAPP2E7Y8gUAALGgQO1m68AA8_w91.jpeg',
          ),
        ),
        onTap: (){
          Navigator.pop(context);
        },
      )
    );
  }
}