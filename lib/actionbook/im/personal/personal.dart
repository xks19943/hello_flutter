import 'package:flutter/material.dart';
import '../common/touch_callback.dart';
import '../common/im_item.dart';

class Personal extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new PersonalState();
  }

}

class PersonalState extends State<Personal> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new ListView(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(top: 20.0),
            color: Colors.white,
            height: 80.0,
            child: new TouchCallBack(
              child: new Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  new Container(
                    margin: const EdgeInsets.only(left: 12.0, right: 15.0),
                    child: Image.asset('images/yixiu.jpeg', width: 70.0, height: 70.0),
                  ),
                  new Expanded(
                    child: new Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        new Text('一休',style: TextStyle(color: Color(0xff353535), fontSize: 18.0),),
                        new Text('账号 yixiu', style: TextStyle(color: Color(0xffa9a9a9), fontSize: 14.0),)
                      ],
                    )
                  ),
                  new Container(
                    margin: const EdgeInsets.only(left: 12.0, right: 15.0),
                    child: Image.asset('images/code.png', width: 24.0, height: 24.0,),
                  )
                ],
              ),
              onPressed: (){}
            ),
          ),
          new Container(
            margin: const EdgeInsets.only(top: 20.0),
            color: Colors.white,
            child: new ImItem(
              title: '好友动态',
              imagePath: 'images/icon_me_friends.png',
            ),
          ),
          new Container(
            margin: const EdgeInsets.only(top: 20.0),
            color: Colors.white,
            child: new Column(
              children: <Widget>[
                new ImItem(
                  title: '消息管理',
                  imagePath: 'images/icon_me_message.png',
                ),
                new Padding(
                  padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                  child: Divider(height: 0.5, color: Color(0xffd9d9d9),),
                ),
                new ImItem(
                  title: '我的相册',
                  imagePath: 'images/icon_me_photo.png',
                ),
                new Padding(
                  padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                  child: Divider(height: 0.5, color: Color(0xffd9d9d9),),
                ),
                new ImItem(
                  title: '我的文件',
                  imagePath: 'images/icon_me_file.png',
                ),
                new Padding(
                  padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                  child: Divider(height: 0.5, color: Color(0xffd9d9d9),),
                ),
                new ImItem(
                  title: '联系客服',
                  imagePath: 'images/icon_me_service.png',
                ),
                new Padding(
                  padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                  child: Divider(height: 0.5, color: Color(0xffd9d9d9),),
                ),
              ],
            ),
          ),
          new Container(
            margin: const EdgeInsets.only(top: 20.0),
            color: Colors.white,
            child: new ImItem(
              title: '清理缓存',
              imagePath: 'images/icon_me_clear.png',
            ),
          )
        ],
      ),
    );
  }
}