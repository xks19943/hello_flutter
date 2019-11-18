import 'package:flutter/material.dart';
import 'dart:ui';

void main(){
  return runApp(new CustomPaintApp());
}


class CustomPaintApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('CustomPaintApp'),
        ),
        body: new SingleChildScrollView(
          child: new Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              new SizedBox(
                width: 500.0,
                height: 300.0,
                child: new CustomPaint(
                  painter: new LinePainter(),
                  child: new Center(
                    child: new Text(
                      '绘制直线',
                      style: new TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w600,
                        color: Colors.black
                      ),
                    ),
                  )
                ),
              ),
              new SizedBox(
                width: 500.0,
                height: 300.0,
                child: new CustomPaint(
                  painter: new CirclePainter(),
                  child: new Center(
                    child: new Text(
                      '绘制圆',
                      style: new TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w600,
                        color: Colors.black
                      ),
                    ),
                  )
                ),
              ),
              new SizedBox(
                width: 500.0,
                height: 300.0,
                child: new CustomPaint(
                  painter: new RRectPainter(),
                  child: new Center(
                    child: new Text(
                      '绘制圆角矩形',
                      style: new TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w600,
                        color: Colors.black
                      ),
                    ),
                  )
                ),
              ),
              new SizedBox(
                width: 500.0,
                height: 300.0,
                child: new CustomPaint(
                  painter: new OvalPainter(),
                  child: new Center(
                    child: new Text(
                      '绘制椭圆',
                      style: new TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w600,
                        color: Colors.black
                      ),
                    ),
                  )
                ),
              ),
              new SizedBox(
                width: 500.0,
                height: 300.0,
                child: new CustomPaint(
                  painter: new DRRectPainter(),
                ),
              ),
              new SizedBox(
                width: 500.0,
                height: 300.0,
                child: new CustomPaint(
                  painter: new PointsPainter(),
                ),
              ),
              new SizedBox(
                width: 500.0,
                height: 300.0,
                child: new CustomPaint(
                  painter: new ArcPainter(),
                ),
              ),
              new SizedBox(
                width: 500.0,
                height: 300.0,
                child: new CustomPaint(
                  painter: new PathPainter(),
                ),
              ),
            ],
          ),
        )
      ),
    );
  }
}


//绘制线
class LinePainter extends CustomPainter{

  Paint _paint = new Paint()
  ..color = Colors.grey
  ..strokeCap = StrokeCap.square
  ..isAntiAlias = true
  ..strokeWidth = 3.0
  ..style = PaintingStyle.stroke;

  /// 重写绘制内容方法
  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawLine(Offset(20.0, 20.0), Offset(300.0, 20.0), _paint);
  }


  /// 重写是否需要重绘的
  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }

}


//绘制圆
class CirclePainter extends CustomPainter{

  Paint _paint = new Paint()
    ..color = Colors.grey
    ..strokeCap = StrokeCap.square
    ..isAntiAlias = true
    ..strokeWidth = 3.0
    ..style = PaintingStyle.fill; // 画笔样式有填充 PaintingStyle.fill及没有填充PaintingStyle.stroke 两种

  /// 重写绘制内容方法
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    canvas.drawCircle(Offset(200.0, 150.0), 150.0, _paint);
  }


  /// 重写是否需要重绘的
  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return false;
  }

}



//绘制圆
class RRectPainter extends CustomPainter{

  Paint _paint = new Paint()
    ..color = Colors.grey
    ..strokeCap = StrokeCap.square
    ..isAntiAlias = true
    ..strokeWidth = 3.0
    ..style = PaintingStyle.fill; // 画笔样式有填充 PaintingStyle.fill及没有填充PaintingStyle.stroke 两种

  /// 重写绘制内容方法
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    // 中心点坐标为 200,200 边长为 100
    Rect rect = Rect.fromCircle(center: Offset(200.0, 200.0), radius: 100.0);
    // 根据矩形创建一个角度为 20 的困角矩形
    RRect rrect = RRect.fromRectAndRadius(rect, Radius.circular(20.0));
    // 开始绘制圆角矩形
    canvas.drawRRect(rrect, _paint);
  }


  /// 重写是否需要重绘的
  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return false;
  }

}



//绘制圆
class OvalPainter extends CustomPainter{

  Paint _paint = new Paint()
    ..color = Colors.grey
    ..strokeCap = StrokeCap.square
    ..isAntiAlias = true
    ..strokeWidth = 3.0
    ..style = PaintingStyle.fill; // 画笔样式有填充 PaintingStyle.fill及没有填充PaintingStyle.stroke 两种

  /// 重写绘制内容方法
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    Rect rect = Rect.fromPoints(Offset(80.0, 200.0), Offset(300.0, 300.0));
    canvas.drawOval(rect, _paint);
  }


  /// 重写是否需要重绘的
  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return false;
  }

}



//绘制圆
class DRRectPainter extends CustomPainter{

  Paint _paint = new Paint()
    ..color = Colors.grey
    ..strokeCap = StrokeCap.square
    ..isAntiAlias = true
    ..strokeWidth = 3.0
    ..style = PaintingStyle.fill; // 画笔样式有填充 PaintingStyle.fill及没有填充PaintingStyle.stroke 两种

  /// 重写绘制内容方法
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint

    //初始化两个矩形
    Rect rect1 = Rect.fromCircle(center: Offset(150.0, 150.0), radius: 80.0);
    Rect rect2 = Rect.fromCircle(center: Offset(150.0, 150.0), radius: 40.0);

    //初始化两个圆角矩形

    RRect outer = RRect.fromRectAndRadius(rect1, Radius.circular(20.0));
    RRect inner = RRect.fromRectAndRadius(rect2, Radius.circular(20.0));

    canvas.drawDRRect(outer, inner, _paint);
  }


  /// 重写是否需要重绘的
  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return false;
  }

}


//绘制多个点
class PointsPainter extends CustomPainter{

  Paint _paint = new Paint()
    ..color = Colors.grey
    ..strokeCap = StrokeCap.round
    ..isAntiAlias = true
    ..strokeWidth = 20.0
    ..style = PaintingStyle.fill; // 画笔样式有填充 PaintingStyle.fill及没有填充PaintingStyle.stroke 两种

  /// 重写绘制内容方法
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint

    canvas.drawPoints(PointMode.points,
      [
        Offset(50.0, 60.0),
        Offset(40.0, 90.0),
        Offset(100.0, 100.0),
        Offset(300.0, 350.0),
        Offset(400.0, 80.0),
        Offset(200.0, 200.0),
      ], _paint..color = Colors.grey);
  }


  /// 重写是否需要重绘的
  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return false;
  }

}


//绘制圆弧
class ArcPainter extends CustomPainter{

  Paint _paint = new Paint()
    ..color = Colors.grey
    ..strokeCap = StrokeCap.round
    ..isAntiAlias = true
    ..strokeWidth = 2.0
    ..style = PaintingStyle.fill; // 画笔样式有填充 PaintingStyle.fill及没有填充PaintingStyle.stroke 两种

  /// 重写绘制内容方法
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    const PI = 3.1415926;
    Rect rect1 = Rect.fromCircle(center: Offset(100.0, 0.0), radius: 100.0);
    canvas.drawArc(rect1, 0.0, PI / 2, true, _paint);

    Rect rect2 = Rect.fromCircle(center: Offset(200.0, 150.0), radius: 100.0);
    canvas.drawArc(rect2, 0.0, PI, true, _paint);

  }


  /// 重写是否需要重绘的
  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return false;
  }

}


//绘制Path的使用
class PathPainter extends CustomPainter {

  Paint _paint = new Paint()
    ..color = Colors.grey
    ..strokeCap = StrokeCap.round
    ..isAntiAlias = true
    ..strokeWidth = 2.0
    ..style = PaintingStyle.stroke;

  @override
  void paint(Canvas canvas, Size size) {
    Path path = new Path();
    path.moveTo(100.0, 100.0);
    path.lineTo(200.0, 300.0);
    path.lineTo(150.0, 250.0);
    path.lineTo(150.0, 500.0);
    path.close();
    canvas.drawPath(path, _paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }

}




