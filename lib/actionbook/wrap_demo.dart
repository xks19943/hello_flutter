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
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Flutter'),
        ),
        body: Wrap(
          spacing: 16.0,
          runSpacing: 16.0,
          children: <Widget>[
            Chip(
              label: Text('令狐冲'),
              avatar: CircleAvatar(
                backgroundColor: Colors.lightGreen.shade800,
                child: new Text(
                  '令狐',
                  style: TextStyle(fontSize: 10.0),
                ),
              ),
            ),
            Chip(
              label: Text('任盈盈'),
              avatar: CircleAvatar(
                backgroundColor: Colors.lightGreen.shade800,
                child: new Text(
                  '盈盈',
                  style: TextStyle(fontSize: 10.0),
                ),
              ),
            ),
            Chip(
              label: Text('刘正风'),
              avatar: CircleAvatar(
                backgroundColor: Colors.lightGreen.shade800,
                child: new Text(
                  '正风',
                  style: TextStyle(fontSize: 10.0),
                ),
              ),
            ),
            Chip(
              label: Text('曲洋'),
              avatar: CircleAvatar(
                backgroundColor: Colors.lightGreen.shade800,
                child: new Text(
                  '曲洋',
                  style: TextStyle(fontSize: 10.0),
                ),
              ),
            ),
            Chip(
              label: Text('林平之'),
              avatar: CircleAvatar(
                backgroundColor: Colors.lightGreen.shade800,
                child: new Text(
                  '平之',
                  style: TextStyle(fontSize: 10.0),
                ),
              ),
            ),
          ],
        )
      ),
    );
  }
}
