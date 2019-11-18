import 'package:flutter/material.dart';
import 'touch_callback.dart';

class ImItem extends StatelessWidget {


  final String title;
  final String imagePath;
  final Icon icon;

  ImItem({Key key, @required this.title, this.imagePath, this.icon}) : super(key:key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new TouchCallBack(
      child: new Container(
        height: 50.0,
        child: new Row(
          children: <Widget>[
            new Container(
              child: imagePath != null
                ? new Image.asset(imagePath, width: 32.0, height: 32.0)
                : new SizedBox(width: 32.0, height: 32.0, child: icon),
              margin: const EdgeInsets.only(left: 22.0, right: 22.0),
            ),
            new Text(title, style: TextStyle(fontSize: 16.0, color: Color(0xff353535)))
          ],
        ),
      ),
      onPressed: () {
        switch(title) {
          case '好友动态':
            Navigator.pushNamed(context, '/friends');
            break;
          case '联系客服':
            break;
        }
      }
    );
  }

}

