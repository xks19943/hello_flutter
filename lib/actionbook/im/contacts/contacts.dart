import 'package:flutter/material.dart';
import './contacts_sider_list.dart';
import './contacts_vo.dart';
import './contacts_header.dart';
import './contacts_item.dart';

class Contacts extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new ContactsState();
  }

}

class ContactsState extends State<Contacts> {
  @override
  Widget build(BuildContext context) {
    return new Center(
      child: new Scaffold(
        body: new ContactsSiderList(
          items: contactsData,
          headerBuilder: (BuildContext context, int index){
            return new Container(
              child: ContactsHeader(),
            );
          },
          itemBuilder: (BuildContext context, int index){
            return new Container(
              color: Colors.white,
              alignment: Alignment.centerLeft,
              child: ContactsItem(item: contactsData[index]),
            );
          },
          sectionBuilder: (BuildContext context, int index){
            return new Container(
              height: 32.0,
              padding: const EdgeInsets.only(left: 14.0),
              alignment: Alignment.centerLeft,
              child: Text(
                contactsData[index].sectionKey,
                style: TextStyle(fontSize: 14.0, color: Color(0xff909090)),
              ),
            );
          },
        ),
      )
    );
  }
}