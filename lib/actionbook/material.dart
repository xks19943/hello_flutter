import 'package:flutter/material.dart';

void main(){
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Material Demo',
      home: new MyHomePage()
    );
  }
}


class MyHomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new MyHomePageState();
  }
}

class MyHomePageState extends State<MyHomePage>{

  int selectedIndex = 0;

  static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> widgetOptions = <Widget>[
    TabBarPage(),
    ButtonPage(),
    OtherPage()
  ];

  void onItemTapped(index){
    setState(() {
      selectedIndex = index;
    });
  }




  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: widgetOptions[selectedIndex],
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new Text(
                '明明大爷'
              ),
              accountEmail: new Text(
                '1185078115@qq.com'
              ),
              currentAccountPicture: new CircleAvatar(
                backgroundImage: new AssetImage('images/pic.jpg'),
              ),
              otherAccountsPictures: <Widget>[
                new Container(
                  child: new Image.asset('images/pic2.jpg'),
                )
              ],
            ),
            new ListTile(
              leading: new CircleAvatar(child: new Icon(Icons.color_lens)),
              title: Text('个性装扮'),
            ),
            new ListTile(
              leading: new CircleAvatar(child: new Icon(Icons.photo_album)),
              title: Text('我的相册'),
            ),
            new ListTile(
              leading: new CircleAvatar(child: new Icon(Icons.wifi)),
              title: Text('免流量特权'),
            ),
          ],
        ),
      ),
      bottomNavigationBar: new BottomNavigationBar(
        backgroundColor: Colors.blue,
        unselectedItemColor: Colors.grey[800],
        currentIndex: selectedIndex,
        selectedItemColor: Colors.white,
        items: <BottomNavigationBarItem>[
          new BottomNavigationBarItem(
            icon: new Icon(Icons.home),
            title: new Text('主页'),
          ),
          new BottomNavigationBarItem(
            icon: new Icon(Icons.search),
            title: new Text('发现'),
          ),
          new BottomNavigationBarItem(
            icon: new Icon(Icons.settings),
            title: new Text('设置'),
          ),
        ],
        onTap: onItemTapped,
      ),
    );
  }
}


enum ConferenceItem {
  AddMember,
  LockConference,
  ModifyLayout,
  TurnoffAll
}


class TabBarPage extends StatelessWidget{

  const TabBarPage();

  static const List<ItemView> items = const<ItemView>[
    const ItemView(title: '自驾', icon: Icons.directions_car),
    const ItemView(title: '自行车', icon: Icons.directions_bike),
    const ItemView(title: '轮船', icon: Icons.directions_boat),
    const ItemView(title: '公交车', icon: Icons.directions_bus),
    const ItemView(title: '火车', icon: Icons.directions_railway),
    const ItemView(title: '步行', icon: Icons.directions_walk),
  ];



  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new DefaultTabController(
      length: items.length,
      child: new Scaffold(
        appBar: new AppBar(
          title: Text('Material Demo'),
          actions: <Widget>[
            new IconButton(
              icon: new Icon(Icons.search),
              tooltip: '搜索',
              onPressed: (){
                
              }
            ),
            new IconButton(
              icon: new Icon(Icons.add),
              tooltip: '添加',
              onPressed: (){
                showMenu(
                  context: context,
                  position: new RelativeRect.fromLTRB(0, 0, 0, 0),


                  items: <PopupMenuEntry<ConferenceItem>>[
                    const PopupMenuItem(
                      child: Text('添加会员'),
                      value: ConferenceItem.AddMember,
                    ),
                    const PopupMenuItem(
                      child: Text('锁定会议'),
                      value: ConferenceItem.LockConference,
                    ),
                    const PopupMenuItem(
                      child: Text('修改布局'),
                      value: ConferenceItem.ModifyLayout,
                    ),
                    const PopupMenuItem(
                      child: Text('挂断所有'),
                      value: ConferenceItem.TurnoffAll,
                    ),
                  ]
                );
              },
            ),
          ],
          bottom: new TabBar(
            tabs: items.map((ItemView item){
              return new Tab(
                text: item.title,
                icon: new Icon(item.icon),
              );
            }).toList()
          ),
        ),
        floatingActionButton: new FloatingActionButton(
          onPressed: (){
            Scaffold.of(context).showSnackBar(new SnackBar(
              content: new Text('你点击了FloatingActionButton',style: new TextStyle(color: Colors.white)),
              backgroundColor: Colors.blue,
            ));
          },
          child: new Icon(Icons.add),
          tooltip: '请点击FloatingActionButton',
          foregroundColor: Colors.white,
          backgroundColor: Colors.blue,
          elevation: 7.0,
          highlightElevation: 14.0,
          mini: false,
          shape: new CircleBorder(),
          isExtended: false,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        body: new TabBarView(
          children: items.map((ItemView item){
            return new Padding(
              padding: const EdgeInsets.all(16.0),
              child: new SelectedView(item: item),
            );
          }).toList(),
        ),
      )
    );
  }

}


class ItemView{
  final String title;
  final IconData icon;
  const ItemView({this.title, this.icon});
}


class SelectedView extends StatelessWidget {
  final ItemView item;
  const SelectedView({Key key, this.item}) : super(key:key);

  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle = Theme.of(context).textTheme.display1;

    // TODO: implement build
    return new Card(
      color: Colors.white,
      child: new Center(
        child: new Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            new Icon(item.icon, size: 128.0, color: textStyle.color),
            new Text(item.title, style: textStyle)
          ],
        ),
      ),
    );
  }

}


class ButtonPage extends StatelessWidget {

  const ButtonPage({Key key}): super(key:key);
  
  @override
  Widget build(BuildContext context) {

    final TextEditingController controller = new TextEditingController();
    controller.addListener((){

    });
    
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('ButtonView Demo'),
      ),
      body: new Center(
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            new FlatButton(
              onPressed: (){

              },
              child: new Text('扁平按钮',style: new TextStyle(color: Colors.blue))
            ),
            new SimpleDialog(
              title: new Text('对话框标题'),
              children: <Widget>[
                SimpleDialogOption(
                  child: new Text('第一行信息'),
                  onPressed: (){

                  },
                ),
                SimpleDialogOption(
                  child: new Text('第二行信息'),
                  onPressed: (){

                  },
                )
              ],
            ),
            new AlertDialog(
              title: new Text('提示'),
              content: SingleChildScrollView(
                child: new ListBody(
                  children: <Widget>[
                    Text('是否要删除？'),
                    Text('一旦删除数据不可恢复')
                  ],
                ),
              ),
              actions: <Widget>[
                FlatButton(
                  onPressed: (){},
                  child: new Text('确定')
                ),
                FlatButton(
                  onPressed: (){},
                  child: new Text('取消')
                ),
              ],
            ),
            new Padding(
              padding: EdgeInsets.all(16.0),
              child: new TextField(
                controller: controller,
                maxLength: 30,
                maxLines: 1,
                autocorrect: true,
                obscureText: false,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 26.0, color: Colors.green),
                onChanged: (text){
                  print('文本内容改变时候回调 $text');
                },
                onSubmitted: (text){
                  print('内容提交时候回调 $text');
                },
                decoration: new InputDecoration(
                  fillColor: Colors.grey.shade200,
                  filled: true,
                  helperText: '用户名',
                  prefixIcon: Icon(Icons.person),
                  suffixText: '用户名',
                ),
              ),

            )
          ],
        ),
      ),
    );
  }
}


class OtherPage extends StatelessWidget {

  const OtherPage({Key key}) : super(key:key);

  @override
  Widget build(BuildContext context) {

    var card = new SizedBox(
      height: 250.0,
      child: new Card(
        margin: EdgeInsets.all(16.0),
        shape: new RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0)
        ),
        child: new Column(
          children: <Widget>[
            new ListTile(
              title: new Text(
                '深圳市南山区深蓝大道35号',
              ),
              subtitle: new Text('创想科技有限公司'),
              leading: new Icon(
                Icons.home,
                color: Colors.lightBlue,
              ),
            ),
            new Divider(),
            new ListTile(
              title: new Text(
                '深圳市罗湖区沿海大道',
              ),
              subtitle: new Text('一木培训机构'),
              leading: new Icon(
                Icons.school,
                color: Colors.lightBlue,
              ),
            ),
            new Divider()
          ],
        ),
      ),
    );

    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Card 布局示例'),
      ),
      body: new Center(
        child: card,
      ),
    );
  }

}

