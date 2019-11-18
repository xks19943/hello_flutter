import 'package:flutter/material.dart';

void main(){
  return runApp(new ClipApp());
}


class ClipApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('ClipApp'),
        ),
        body: new SingleChildScrollView(
          child: new Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  new ClipOval(     //圆形裁剪
                    child: new SizedBox(
                      width: 300.0,
                      height: 300.0,
                      child: new Image.asset(
                        'images/pic25.jpg',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  new ClipRRect(     //圆角矩形裁剪
                    borderRadius: new BorderRadius.all(
                      new Radius.circular(30.0)
                    ),
                    child: new SizedBox(
                      width: 300.0,
                      height: 300.0,
                      child: new Image.asset(
                        'images/pic25.jpg',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  new ClipRect(     //矩形裁剪
                    clipper: new RectClipper(),
                    child: new SizedBox(
                      width: 300.0,
                      height: 300.0,
                      child: new Image.asset(
                        'images/pic25.jpg',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  new ClipPath(
                    clipper: new TriangleCliper(),
                    child: new SizedBox(
                      width: 300.0,
                      height: 300.0,
                      child: new Image.asset(
                        'images/pic25.jpg',
                        fit: BoxFit.fill,
                      ),
                    ),
                  )
                ],
              ),
            ],
          )
        )
      ),
    );
  }
}


// 自定义 clipper， 类型为 Rect
class RectClipper extends CustomClipper<Rect> {
  // 重写获取剪裁范围
  @override
  Rect getClip(Size size) {
    // TODO: implement getClip
    return new Rect.fromLTRB(100.0, 100.0, size.width - 100.0, size.height - 100.0);
  }

  // 重写是否重新剪裁
  @override
  bool shouldReclip(CustomClipper<Rect> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }

}


class TriangleCliper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    // TODO: implement getClip
    Path path = new Path();
    path.moveTo(50.0, 50.0);
    path.lineTo(50.0, 10.0);
    path.lineTo(100.0, 50.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }

}