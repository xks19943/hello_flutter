import 'package:flutter/material.dart';


class TouchCallBack extends StatefulWidget {
  final Widget child;
  final VoidCallback onPressed;
  final bool isFeed;
  final Color background;


  TouchCallBack({Key key,
    @required this.child,
    @required this.onPressed,
    this.isFeed: true,
    this.background: const Color(0xffd8d8d8d)
  }) : super(key:key);

  @override
  State<StatefulWidget> createState() {
    return new TouchCallBackState();
  }

}

class TouchCallBackState extends State<TouchCallBack> {
  Color color = Colors.transparent;
  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      child: new Container(
        color: color,
        child: widget.child,
      ),
      onTap: widget.onPressed,
      onPanDown: (d){
        if(widget.isFeed == false){
          return;
        }
        setState(() {
          color = widget.background;
        });
      },
      onPanCancel: (){
        setState(() {
          color = Colors.transparent;
        });
      },
    );
  }

}