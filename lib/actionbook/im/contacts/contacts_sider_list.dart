import 'package:flutter/material.dart';
import './contacts_vo.dart';

class ContactsSiderList extends StatefulWidget {

  //好友列表数据
  final List<ContactsVO> items;
  //好友列表头构造器
  final IndexedWidgetBuilder headerBuilder;
  //好友列表项构造器
  final IndexedWidgetBuilder itemBuilder;
  //字母构造器
  final IndexedWidgetBuilder sectionBuilder;


  ContactsSiderList({
    Key key,
    @required this.items,
    this.headerBuilder,
    @required this.itemBuilder,
    @required this.sectionBuilder
  }) : super(key:key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new ContactsSiderState();
  }
}

class ContactsSiderState extends State<ContactsSiderList> {

  final ScrollController _scrollController = new ScrollController();

  _onNotification(ScrollNotification scrollNotification){
    return true;
  }


  //判断显示头部视图和容器
  _isShowHeaderView(index){
    if(index == 0 && widget.headerBuilder != null){
      return Offstage(
        offstage: false,
        child: widget.headerBuilder(context,index),
      );
    }
    return Container();
  }

  //根据定位判断是否显示好友列表头
  _shouldShowHeader(index){
    if(index <= 0){
      return false;
    }
    if(index !=0 && widget.items[index].sectionKey != widget.items[index-1].sectionKey){
      return false;
    }
    return true;
  }


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Stack(
        children: <Widget>[
          new NotificationListener(
            child: new ListView.builder(
              itemCount: widget.items.length,
              controller: _scrollController,
              physics: const AlwaysScrollableScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                return new Container(
                  alignment: Alignment.centerLeft,
                  child: new Column(
                    children: <Widget>[
                      _isShowHeaderView(index),
                      new Offstage(
                        offstage: _shouldShowHeader(index),
                        child: widget.sectionBuilder(context,index),
                      ),
                      new Column(
                        children: <Widget>[
                          widget.itemBuilder(context,index)
                        ],
                      )
                    ],
                  ),
                );
              }
            )
          )
        ],
      ),
    );
  }

}