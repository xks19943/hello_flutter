import 'package:flutter/material.dart';
import './message_data.dart';
import '../common/touch_callback.dart';
import 'package:date_format/date_format.dart';

class MessageItem extends StatelessWidget {
  final MessageData message;

  MessageItem(this.message);

  @override
  Widget build(BuildContext context) {
    return new Container(
      decoration: new BoxDecoration(
        color: Colors.white,
        border: Border(bottom: BorderSide(width: 0.5, color: Color(0xffd9d9d9d)))
      ),
      height: 64.0,
      child: new TouchCallBack(
        onPressed: (){

        },
        child: new Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            new Container(
              margin: const EdgeInsets.only(left: 13.0, right: 13.0),
              child: Image.network(message.avatar, width: 48.0, height: 48.0),
            ),
            new Expanded(
              child: new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Text(
                    message.title,
                    style: new TextStyle(fontSize: 16.0, color: Color(0xff353535)),
                    maxLines: 1,
                  ),
                  new Padding(padding: const EdgeInsets.only(top: 8.0)),
                  new Text(
                    message.subTitle,
                    style: new TextStyle(fontSize: 14.0, color: Color(0xffa9a9a9)),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              )
            ),
            new Container(
              alignment: AlignmentDirectional.topStart,
              margin: const EdgeInsets.only(right: 12.0, top: 12.0),
              child: new Text(
                formatDate(message.time, <String>[yyyy,'-',mm,'-',dd,' ', hh,':',nn,':',ss]),
                style: new TextStyle(fontSize: 14.0, color: Color(0xffa9a9a9a)),
              ),
            )
          ],
        ),
      ),
    );
  }

}