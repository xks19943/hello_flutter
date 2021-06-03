import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

/*
class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {

    //创建按钮列表
    Column buildButtonColumn(IconData icon, String label) {
      Color color = Theme.of(context).primaryColor;
      return new Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Icon(
            icon,
            color: color,
          ),
          new Text(
            label,
            style: new TextStyle(
                fontSize: 12.0, fontWeight: FontWeight.w400, color: color),
          )
        ],
      );
    }

    //创建标题行
    Widget titleSection = new Container(
      padding: EdgeInsets.all(8.0),
      child: new Column(
        children: <Widget>[
          new Row(
            children: <Widget>[
              new Expanded(
                  child: new Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Text(
                    'Oeschinen Lake Campground',
                    style: new TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  new Text(
                    'Oeschinen Lake Campground',
                    style: new TextStyle(
                      color: Colors.grey[500],
                    ),
                  )
                ],
              )),
              new FavoriteWidget(),
            ],
          ),
        ],
      ),
    );

    //按钮行
    Widget buttonSection = new Container(
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          buildButtonColumn(Icons.call, 'CALL'),
          buildButtonColumn(Icons.near_me, 'ROUTE'),
          buildButtonColumn(Icons.share, 'SHARE'),
        ],
      ),
    );

    // 文本内容
    Widget textSection = new Container(
      padding: const EdgeInsets.all(32.0),
      child: new Text(
        '''
Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese Alps. Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes. A gondola ride from Kandersteg, followed by a half-hour walk through pastures and pine forest, leads you to the lake, which warms to 20 degrees Celsius in the summer. Activities enjoyed here include rowing, and riding the summer toboggan run.
        ''',
        softWrap: true,
      ),
    );

    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(primarySwatch: Colors.blue),
      home: new Scaffold(
        body: new ListView(
          children: <Widget>[
            new Image.asset(
              'images/lake.jpg',
              width: 600.0,
              height: 240.0,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection
          ],
        ),
      ),
    );
  }
}
*/


/*
class FavoriteWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new FavoriteWidgetState();
  }
}

class FavoriteWidgetState extends State<FavoriteWidget> {
  bool _isFavorite = true;
  int _favoriteCount = 41;


  void _toggleFavorite() {
    setState(() {
      if(_isFavorite){
        _favoriteCount -= 1;
        _isFavorite = false;
      } else {
        _favoriteCount += 1;
        _isFavorite = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        new Container(
          child: new IconButton(
            icon: (_isFavorite
              ? new Icon(Icons.star)
              : new Icon(Icons.star_border)),
            color: Colors.red,
            onPressed: _toggleFavorite
          ),
        ),
        new SizedBox(
          width: 18.0,
          child: new Container(
            child: new Text('$_favoriteCount'),
          ),
        )
      ],
    );
  }
}*/


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'StateManage',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('StateManage'),
        ),
        body: new Center(
          child: new ParentWidget(),
        ),
      ),
    );
  }
}

//widget自己管理状态
/*
class TapBoxA extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new TapBoxAState();
  }

}

class TapBoxAState extends State<TapBoxA> {
  bool _active = true;

  void _handleTap() {
    setState(() {
      _active = !_active;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new GestureDetector(
      onTap: _handleTap,
      child: new Container(
        child: new Center(
          child: new Text(
            _active ? 'Active' : 'Inactive',
            style: new TextStyle(fontSize: 32.0, color: Colors.white),
          ),
        ),
        width: 200.0,
        height: 200.0,
        decoration: BoxDecoration(
          color: _active ? Colors.lightGreen[700] : Colors.grey[600]
        ),
      ),
    );
  }
}
*/


//学习父控件管理子控件的状态
/*
class ParentStateWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new ParentState();
  }

}

class ParentState extends State<ParentStateWidget> {
  bool _active = false;

  //处理子控件的方法 并且修改父控件的状态值 由父控件来管理状态
  void _handleTapBoxChange(bool newValue) {
    setState(() {
      _active = newValue;
    });
  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new TapBoxB(
      active: _active,
      onChanged: _handleTapBoxChange
    );
  }
}

class TapBoxB extends StatelessWidget {

  TapBoxB({Key key, this.active: false, @required this.onChanged}) : super(key: key);

  final bool active;
  final ValueChanged<bool> onChanged;

  //传递方法给父控件来实现
  void _handleTap() {
    onChanged(!active);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new GestureDetector(
      onTap: _handleTap,
      child: new Container(
        child: new Center(
          child: new Text(
            active ? 'Active' : 'Inactive',
            style: new TextStyle(fontSize: 32.0, color: Colors.white),
          ),
        ),
        width: 200.0,
        height: 200.0,
        decoration: BoxDecoration(
          color: active ? Colors.lightGreen[700] : Colors.grey[600]
        ),
      ),
    );
  }

}*/


class ParentWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new ParentWidgetState();
  }

}

//父控件控制active的状态
class ParentWidgetState extends State<ParentWidget> {
  bool _active = false;
  void _handleTapChange(bool newValue){
    setState(() {
      _active = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new TapBoxC(
      active: _active,
      onChanged: _handleTapChange
    );
  }
}


class TapBoxC extends StatefulWidget {
  TapBoxC({Key key, this.active: false, @required this.onChanged}) : super(key:key);

  final bool active;
  final ValueChanged<bool> onChanged;

  @override
  State<StatefulWidget> createState() {
    return new TapBoxCState();
  }
}


//TapBoxC自己控制高亮状态
class TapBoxCState extends State<TapBoxC>{
  bool _highlight = false;

  //通过widget对象调用对应的widget的方法
  void _handleTap(){
    widget.onChanged(!widget.active);
  }

  //按下的时候高亮
  void _handleTapDown(TapDownDetails details) {
    setState(() {
      _highlight = true;
    });
  }

  void _handleTapUp(TapUpDetails details) {
    setState(() {
      _highlight = false;
    });
  }

  void _handleTapCancel() {
    setState(() {
      _highlight = false;
    });
  }


  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      onTapDown: _handleTapDown, // Handle the tap events in the order that
      onTapUp: _handleTapUp, // they occur: down, up, tap, cancel
      onTap: _handleTap,
      onTapCancel: _handleTapCancel,
      child: new Container(
        child: new Center(
          child: new Text(widget.active ? 'Active' : 'Inactive',
            style: new TextStyle(fontSize: 32.0, color: Colors.white)),
        ),
        width: 200.0,
        height: 200.0,
        decoration: new BoxDecoration(
          color:
          widget.active ? Colors.lightGreen[700] : Colors.grey[600],
          border: _highlight
            ? new Border.all(
            color: Colors.teal[700],
            width: 10.0,
          )
            : null,
        ),
      ),
    );
  }
}


/*class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
        decoration: BoxDecoration(color: Colors.white),
        child: new Center(
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  textDirection: TextDirection.ltr,
                  children: <Widget>[
                    new Expanded(
                      child: new Image.asset('images/pic1.jpg'),
                    ),
                    new Expanded(
                      child: new Image.asset('images/pic2.jpg'),
                      flex: 2,
                    ),
                    new Expanded(
                      child: new Image.asset('images/pic3.jpg'),
                    )
                  ],
                ),

              ],
        )));
  }
}*/

/*class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      decoration: BoxDecoration(
        color: Colors.white
      ),
      child: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            new Image.asset('images/pic4.jpg'),
            new Image.asset('images/pic5.jpg'),
            new Image.asset('images/pic6.jpg'),
          ],
        ),
      ),
    );
  }

}*/

/*
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      decoration: BoxDecoration(
        color: Colors.white
      ),
      child: new Center(
        child: new Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          textDirection: TextDirection.ltr,
          children: <Widget>[
            new Icon(
              Icons.star,
              color: Colors.green[500]
            ),
            new Icon(
              Icons.star,
              color: Colors.green[500]
            ),
            new Icon(
              Icons.star,
              color: Colors.green[500]
            ),
            new Icon(
              Icons.star,
              color: Colors.green[500]
            ),
            new Icon(
              Icons.star,
              color: Colors.green[500]
            ),
          ],
        ),
      ),
    );
  }
}*/

/*
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    var descTextStyle = new TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w800,
      fontFamily: 'Roboto',
      letterSpacing: 0.5,
      fontSize: 18.0,
      height: 2.0,
    );

    var iconList = DefaultTextStyle.merge(
     style: descTextStyle,
     child: new Container(
       padding: new EdgeInsets.all(20.0),
       child: new Row(
         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
         children: <Widget>[
           new Column(
             children: <Widget>[
               new Icon(Icons.kitchen, color: Colors.green[500]),
               new Text('REP:'),
               new Text('25 min')
             ],
           ),
           new Column(
             children: [
               new Icon(Icons.timer, color: Colors.green[500]),
               new Text('COOK:'),
               new Text('1 hr'),
             ],
           ),
           new Column(
             children: [
               new Icon(Icons.restaurant, color: Colors.green[500]),
               new Text('FEEDS:'),
               new Text('4-6'),
             ],
           ),
         ],
       ),
     )
    );
    // TODO: implement build
    return new MaterialApp(
      title: 'Flutter Demo',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('学习布局')
        ),
        body: new Container(
          child: new Column(
            children: <Widget>[
              new Container(
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    new Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        new Icon(
                          Icons.star,
                          color: Colors.black,
                        ),
                        new Icon(
                          Icons.star,
                          color: Colors.black,
                        ),
                        new Icon(
                          Icons.star,
                          color: Colors.black,
                        ),
                        new Icon(
                          Icons.star,
                          color: Colors.black,
                        ),
                        new Icon(
                          Icons.star,
                          color: Colors.black,
                        ),
                      ],
                    ),
                    new Text(
                      '170 Reviews',
                      style: new TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w800,
                        fontFamily: 'Roboto',
                        letterSpacing: 0.5,
                        fontSize: 20.0
                      ),
                    )
                  ],
                ),
              ),
              new Container(
                child: iconList,
              )
            ],
          )
        ),
      ),
    );
  }
}*/

//学习使用container
/*class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text(
            '学习Container'
          )
        ),
        body: new Container(
          decoration: new BoxDecoration(
            color: Colors.black26
          ),
          child: new Column(
            children: <Widget>[
              new Row(
                children: <Widget>[
                  new Expanded(child: new Container(
                    decoration: new BoxDecoration(
                      border: new Border.all(width: 10.0, color: Colors.black38),
                      borderRadius: const BorderRadius.all(const Radius.circular(8.0)),
                    ),
                    margin: const EdgeInsets.all(4.0),
                    child: new Image.asset('images/pic01.jpg'),
                  )),
                  new Expanded(child: new Container(
                    decoration: new BoxDecoration(
                      border: new Border.all(width: 10.0, color: Colors.black38),
                      borderRadius:  const BorderRadius.all(const Radius.circular(8.0))
                    ),
                    margin: const EdgeInsets.all(4.0),
                    child: new Image.asset('images/pic02.jpg'),
                  ))
                ],
              ),
              new Row(
                children: <Widget>[
                  new Expanded(child: new Container(
                    decoration: new BoxDecoration(
                      border: new Border.all(width: 10.0, color: Colors.black38),
                      borderRadius: const BorderRadius.all(const Radius.circular(8.0)),
                    ),
                    margin: const EdgeInsets.all(4.0),
                    child: new Image.asset('images/pic03.jpg'),
                  )),
                  new Expanded(child: new Container(
                    decoration: new BoxDecoration(
                      border: new Border.all(width: 10.0, color: Colors.black38),
                      borderRadius:  const BorderRadius.all(const Radius.circular(8.0))
                    ),
                    margin: const EdgeInsets.all(4.0),
                    child: new Image.asset('images/pic04.jpg'),
                  ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}*/

/*class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new MyAppState();
  }
}*/

//学习GridView
/*class MyAppState extends State<MyApp>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('学习GridView'),
        ),
        body: new Center(
          child: buildGrid(),
        ),
      ),
    );
  }

  Widget buildGrid() {
    return new GridView.extent(
      maxCrossAxisExtent: 150.0,
      padding: const EdgeInsets.all(4.0),
      mainAxisSpacing: 4.0,
      crossAxisSpacing: 4.0,
      children: _buildGridTileList(30),
    );
  }

  List<Widget> _buildGridTileList(int count) {
    return new List.generate(count,
        (int index) => new Container(
          child: new Image.asset('images/pic${index + 1}.jpg')
        )
    );
  }

}*/

/**
 * 学习使用ListView
 */
/*class MyAppState extends State<MyApp>{

  List<Widget> list = <Widget>[
    new ListTile(
      title: new Text(
        'CineArts at the Empire',
        style: new TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0),
      ),
      subtitle: new Text(
        '85 W Portal Ave'
      ),
      leading: new Icon(
        Icons.theaters,
        color: Colors.blue[500],
      ),
    ),
    new ListTile(
      title: new Text(
        'The Castro Theater',
        style: new TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0),
      ),
      subtitle: new Text(
        'The Castro Theater'
      ),
      leading: new Icon(
        Icons.theaters,
        color: Colors.blue[500],
      ),
    )
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('学习GridView'),
        ),
        body: new Center(
          child: ListView(
            children: list,
          )
        ),
      ),
    );
  }

}*/

//学习使用Stack
/*class MyAppState extends State<MyApp>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('学习Stack'),
        ),
        body: new Center(
          child: new Stack(
            alignment: const Alignment(0.6, 0.6),
            children: <Widget>[
              new CircleAvatar(
                backgroundImage: new AssetImage('images/pic.jpg'),
                radius: 100.0,
              ),
              new Container(
                decoration: new BoxDecoration(
                  color: Colors.black45
                ),
                child: new Text(
                  'Mia B',
                  style: new TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

}*/

//学习使用Card
/*class MyAppState extends State<MyApp>{

  var card = new SizedBox(
    height: 210.0,
    child: new Card(
      elevation: 5.0,
      child: new Column(
        children: [
          new ListTile(
            title: new Text('1625 Main Street',
              style: new TextStyle(fontWeight: FontWeight.w500)),
            subtitle: new Text('My City, CA 99984'),
            leading: new Icon(
              Icons.restaurant_menu,
              color: Colors.blue[500],
            ),
          ),
          new Divider(),
          new ListTile(
            title: new Text('(408) 555-1212',
              style: new TextStyle(fontWeight: FontWeight.w500)),
            leading: new Icon(
              Icons.contact_phone,
              color: Colors.blue[500],
            ),
          ),
          new ListTile(
            title: new Text('costa@example.com'),
            leading: new Icon(
              Icons.contact_mail,
              color: Colors.blue[500],
            ),
          ),
        ],
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('学习Card'),
        ),
        body: new ListView(
          children: <Widget>[
            card
          ],
        )
      ),
    );
  }

}*/
