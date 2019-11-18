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
        body: Center(
          child: Table(
            columnWidths: const <int,TableColumnWidth>{
              0: FixedColumnWidth(100.0),
              1: FixedColumnWidth(40.0),
              2: FixedColumnWidth(80.0),
              3: FixedColumnWidth(80.0),
            },
            border: new TableBorder.all(
              color: Colors.black38,
              width: 2.0,
              style: BorderStyle.solid
            ),
            children: const <TableRow>[
              TableRow(
                children: <Widget>[
                  Text('姓名'),
                  Text('性别'),
                  Text('年龄'),
                  Text('身高'),
                ]
              ),
              TableRow(
                children: <Widget>[
                  Text('张三'),
                  Text('男'),
                  Text('26'),
                  Text('172'),
                ]
              ),
              TableRow(
                children: <Widget>[
                  Text('李四'),
                  Text('男'),
                  Text('25'),
                  Text('170'),
                ]
              ),
            ],
          )
        ),
      ),
    );
  }
}

