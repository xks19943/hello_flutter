import 'package:flutter/material.dart';
import './contacts_item.dart';

class ContactsHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Column(
      children: <Widget>[
        new ContactsItem(
          titleName: '新加好友',
          imageName: 'images/icon_addfriend.png',
        ),
        new ContactsItem(
          titleName: '公共聊天室',
          imageName: 'images/icon_groupchat.png',
        ),
      ],
    );
  }

}