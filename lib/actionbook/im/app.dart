import 'package:flutter/material.dart';
import './chat/message.dart';
import './contacts/contacts.dart';
import './personal/personal.dart';

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new AppState();
  }
}

class AppState extends State<App> {
  int _currentIndex = 0;

  Message message;
  Contacts contacts;
  Personal personal;

  //
  currentPage(){
    switch (_currentIndex){
      case 0:
        if(message == null){
          message = new Message();
        }
        return message;
      case 1:
        if(contacts == null){
          contacts = new Contacts();
        }
        return contacts;
      case 2:
        if(personal == null){
          personal = new Personal();
        }
        return personal;
    }
  }


  _popupMenuItem(String title, {String imagePath, IconData icon}){
    return new PopupMenuItem(
      child: Row(
        children: <Widget>[
          imagePath != null
            ? Image.asset(
                imagePath,
                width: 32.0,
                height: 32.0)
            : SizedBox(
                width: 32.0,
                height: 32.0,
                child: Icon(
                  icon,
                  color: Colors.white,
                )
              ),
          new Container(
            padding: const EdgeInsets.only(left: 20.0),
            child: new Text(
              title,
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      )
    );
  }


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('即时通讯'),
        actions: <Widget>[
          new GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed('search');
            },
            child: new Icon(Icons.search),
          ),
          new Padding(
            padding: const EdgeInsets.only(left: 30.0, right: 30.0),
            child: new GestureDetector(
              onTap: () {
                showMenu(
                  context: context,
                  position: RelativeRect.fromLTRB(500.0, 96.0, 10.0, 10.0),
                  items: <PopupMenuItem>[
                    _popupMenuItem('发起会话',
                      imagePath: 'images/icon_menu_group.png'),
                    _popupMenuItem('添加好友',
                      imagePath: 'images/icon_menu_addfriend.png'),
                    _popupMenuItem('联系客服',
                      imagePath: 'images/icon_menu_scan.png'),
                  ]
                );
              },
              child: new Icon(Icons.add),
            ),
          )
        ],
      ),
      bottomNavigationBar: new BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: ((index) {
          setState(() {
            _currentIndex = index;
          });
        }),
        items: [
          new BottomNavigationBarItem(
            icon: _currentIndex == 0
              ? Image.asset(
              'images/message_pressed.png',
              width: 32.0,
              height: 28.0,
            )
              : Image.asset(
              'images/message_normal.png',
              width: 32.0,
              height: 28.0,
            ),
            title: new Text('聊天',
              style: new TextStyle(
                color: _currentIndex == 0
                  ? Color(0xFF46c01b)
                  : Color(0xff999999))),
          ),
          new BottomNavigationBarItem(
            icon: _currentIndex == 1
              ? Image.asset(
              'images/contact_list_pressed.png',
              width: 32.0,
              height: 28.0,
            )
              : Image.asset(
              'images/contact_list_normal.png',
              width: 32.0,
              height: 28.0,
            ),
            title: new Text('好友',
              style: new TextStyle(
                color: _currentIndex == 1
                  ? Color(0xFF46c01b)
                  : Color(0xff999999))),
          ),
          new BottomNavigationBarItem(
            icon: _currentIndex == 2
              ? Image.asset(
              'images/profile_pressed.png',
              width: 32.0,
              height: 28.0,
            )
              : Image.asset(
              'images/profile_normal.png',
              width: 32.0,
              height: 28.0,
            ),
            title: new Text('我的',
              style: new TextStyle(
                color: _currentIndex == 2
                  ? Color(0xFF46c01b)
                  : Color(0xff999999))),
          ),
        ]),
      body: currentPage(),
    );
  }
}