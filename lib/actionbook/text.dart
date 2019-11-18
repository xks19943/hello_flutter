import 'package:flutter/material.dart';

void main(){
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Text Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Text Demo'),
        ),
        body: Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text(
                '红色 + 黑色删除线 +25 号',
                style: new TextStyle(
                  color: const Color(0xffff0000),
                  decoration: TextDecoration.lineThrough,
                  decorationColor: const Color(0xff000000),
                  fontSize: 25.0,
                )
              ),
              new Text(
                '橙色 + 下划线 +24 号',
                style: new TextStyle(
                  color: const Color(0xffff9900),
                  decoration: TextDecoration.underline,
                  fontSize: 24.0,
                 ),
              ),
              new Text(
                '好好学习天天向上好好学习天天向上好好学习天天向上好好学习天天向上好好学习'
                  '天天向上好好学习天天向上好好学习天天向上好好学习天天向上好好学习天天向上',
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                style: new TextStyle(
                  fontWeight: FontWeight.bold
                ),
              ),
              new Text.rich(
                new TextSpan(
                  text: 'Hello',
                  children: <TextSpan>[
                    new TextSpan(text: ' beautiful ', style: TextStyle(fontStyle: FontStyle.italic)),
                    new TextSpan(text: 'world', style: TextStyle(fontWeight: FontWeight.bold)),
                  ]
                )
              )
          ],
          )
        ),
      ),
    );
  }
}