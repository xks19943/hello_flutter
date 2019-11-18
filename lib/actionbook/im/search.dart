import 'package:flutter/material.dart';
import './common/touch_callback.dart';

class SearchPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new SearchPageState();
  }
}

class SearchPageState extends State<SearchPage> {

  FocusNode focusNode = new FocusNode();

  _getText(String text){
    return new TouchCallBack(
      isFeed: false,
      child: new Text(
        text,
        style: TextStyle(fontSize: 14.0, color: Color(0xff1aad19)),
      ),
      onPressed: (){},
    );
  }

  _requestFocus(){
    FocusScope.of(context).requestFocus(focusNode);
    return focusNode;
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Container(
        margin: const EdgeInsets.only(top: 25.0),
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            new Stack(
              children: <Widget>[
                new TouchCallBack(
                  isFeed: false,
                  child: new Container(
                    height: 45.0,
                    margin: const EdgeInsets.only(left: 12.0, right: 10.0),
                    child: new Icon(
                      Icons.chevron_left,
                      color: Colors.black
                    ),
                  ),
                  onPressed: (){
                    Navigator.of(context).pop();
                  }
                ),
                new Container(
                  alignment: Alignment.centerLeft,
                  height: 45.0,
                  margin: const EdgeInsets.only(left: 50.0, right: 10.0),
                  decoration: new BoxDecoration(
                    border: new Border(
                      bottom: new BorderSide(width: 1.0, color: Colors.green)
                    )
                  ),
                  child: new Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      new Expanded(
                        child: TextField(
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16.0,
                          ),
                          onChanged: (String text){},
                          decoration: InputDecoration(
                            hintText: '搜索',
                            border: InputBorder.none
                          ),
                          focusNode: _requestFocus(),
                        ),
                      ),
                      new Container(
                        margin: const EdgeInsets.only(right: 10.0),
                        child: new Icon(
                          Icons.mic,
                          color: Color(0xffaaaaaa),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            new Container(
              margin: const EdgeInsets.only(top: 50.0),
              child: new Text(
                '常用搜索',
                style: TextStyle(fontSize: 16.0, color: Color(0xffb5b5b5)),
              ),
            ),
            new Padding(
              padding: const EdgeInsets.all(30.0),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  _getText('朋友'),
                  _getText('聊天'),
                  _getText('群组'),
                ],
              ),
            ),
            new Padding(
              padding: const EdgeInsets.only(left: 30.0, right: 30.0),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  _getText('Flutter'),
                  _getText('Dart'),
                  _getText('C++'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
