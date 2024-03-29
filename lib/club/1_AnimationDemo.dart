import 'dart:math';

import 'package:flutter/material.dart';

void main(){
  runApp(new AnimatedContainerApp());
}

class AnimatedContainerApp extends StatefulWidget {
  @override
  _AnimatedContainerAppState createState() => _AnimatedContainerAppState();
}

class _AnimatedContainerAppState extends State<AnimatedContainerApp> {

  double _width = 50.0;
  double _height = 50.0;
  Color _color = Colors.green;
  BorderRadius _borderRadius = new BorderRadius.circular(8.0);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: new Text('AnimatedContainer Demo'),
        ),
        body: Center(
          child: AnimatedContainer(
            duration: Duration(seconds: 1),
            width: _width,
            height: _height,
            decoration: BoxDecoration(
              color: _color,
              borderRadius: _borderRadius
            ),
            curve: Curves.fastOutSlowIn,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            setState(() {
              final random = Random();
              _width = random.nextInt(300).toDouble();
              _height = random.nextInt(300).toDouble();

              _color = Color.fromRGBO(
                random.nextInt(256),
                random.nextInt(256),
                random.nextInt(256),
                1,
              );

              _borderRadius = BorderRadius.circular(random.nextInt(100).toDouble());
            });
          }
        ),
      ),
    );
  }
}
