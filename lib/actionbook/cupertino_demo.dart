import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(new MyApp());
}


class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new CupertinoApp(
      home: new CupertinoTabScaffold(
        tabBar: new CupertinoTabBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.home),
              title: new Text('主页')
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.person),
              title: new Text('聊天')
            ),
          ]
        ),
        tabBuilder: (context,index){
          switch (index){
            case 0:
              return new HomePage();
              break;
            case 1:
              return new ChatPage();
              break;
            default:
              return new Container();
          }
        }),
    );
  }

}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new CupertinoPageScaffold(
      navigationBar: new CupertinoNavigationBar(
        middle: new Text('主页'),
      ),
      child: Container(
        color: Color(0xcccccccc),
        child: new ListView(
          children: <Widget>[
            CupertinoActivityIndicator(
              animating: true,
              radius: 32.0,
            ),
            CupertinoAlertDialog(
              title: Text('提示'),
              content: SingleChildScrollView(
                child: ListBody(
                  children: <Widget>[
                    Text('是否要删除'),
                    Text('一旦删除数据不可恢复！')
                  ],
                ),
              ),
              actions: <Widget>[
                CupertinoDialogAction(
                  child: Text('确定'),
                  onPressed: (){
                    print('确定');
                  },
                ),
                CupertinoDialogAction(
                  child: Text('取消'),
                  onPressed: (){
                    print('取消');
                  },
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: CupertinoButton(
                color: Colors.blue,
                child: new Text(
                  'CupertinoButton'
                ),
                onPressed: (){
                  print('button');
                }
              ),
            )
          ],
        ),
      )
    );
  }
}


class ChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new CupertinoPageScaffold(
      navigationBar: new CupertinoNavigationBar(
        leading: Icon(CupertinoIcons.back),
        trailing: Icon(CupertinoIcons.add),
        middle: new Text('聊天'),
      ),
      child: new Center(
        child: new Text('聊天'),
      )
    );
  }

}
