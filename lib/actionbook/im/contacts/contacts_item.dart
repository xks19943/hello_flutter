import 'package:flutter/material.dart';
import './contacts_vo.dart';

class ContactsItem extends StatelessWidget {
  final ContactsVO item;
  final String titleName;
  final String imageName;

  ContactsItem({this.item,this.titleName,this.imageName});

  @override
  Widget build(BuildContext context) {
    return new Container(
      decoration: new BoxDecoration(
        color: Colors.white,
        border: Border(bottom: BorderSide(width: 0.5, color: Color(0xffd9d9d9)))
      ),
      height: 52.0,
      child: new FlatButton(
        onPressed: (){},
        child: new Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            imageName == null
              ? Image.network(item.avatarUrl, width: 36.0, height: 36.0, scale: 0.9)
              : Image.asset(imageName, width: 36.0, height: 36.0),
            new Container(
              margin: const EdgeInsets.only(left: 12.0),
              child: new Text(
                titleName == null ? item.name ?? '暂时' : titleName,
                style: TextStyle(fontSize: 18.0, color: Color(0xff353535)),
                maxLines: 1,
              ),
            ),
          ],
        )
      ),
    );
  }

}