import 'package:flutter/material.dart';

void main(){
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  final appTitle = 'Orientation Demo';

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: appTitle,
      home: new OrientationList(
        appTitle: appTitle,
      ) ,
    );
  }
}

//当屏幕横竖切换的时候调用修改GridView的条目
class OrientationList extends StatelessWidget {
  final String appTitle;
  OrientationList({Key key,this.appTitle}) : super(key:key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(appTitle)
      ),
      body: new OrientationBuilder(
        builder: (context,orientation){
          return new GridView.count(
            crossAxisCount: orientation == Orientation.portrait ? 2 : 3,
            children: List.generate(100, (index){
              return new Center(
                child: new Text(
                  'Item $index',
                  style: Theme.of(context).textTheme.headline,
                ),
              );
            }),
          );
        }
      ),
    );
  }

}