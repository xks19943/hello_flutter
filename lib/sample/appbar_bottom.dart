import 'package:flutter/material.dart';

class AppBarBottomSample extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new AppBarBottomSampleState();
  }

}

class AppBarBottomSampleState extends State<AppBarBottomSample> with SingleTickerProviderStateMixin{
  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = new TabController(length: choices.length, vsync: this);
  }


  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _tabController.dispose();
  }

  void _nextPage(int delta){
    final int newIndex = _tabController.index + delta;
    if(newIndex < 0 || newIndex >= _tabController.length){
      return;
    }
    _tabController.animateTo(newIndex);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: const Text('AppBar Bottom Widget'),
          leading: new IconButton(
            tooltip: 'Previous choice',
            icon: const Icon(Icons.arrow_back),
            onPressed: (){
              _nextPage(-1);
            }
          ),
          actions: <Widget>[
            new IconButton(
              icon: const Icon(Icons.arrow_forward),
              tooltip: 'Next choice',
              onPressed: (){
                _nextPage(1);
              }
            )
          ],
          bottom: new PreferredSize(
            child: new Theme(
              data: Theme.of(context).copyWith(accentColor: Colors.white),
              child: new Container(
                height: 48.0,
                alignment: Alignment.center,
                child: new TabPageSelector(
                  controller: _tabController,
                ),
              )),
            preferredSize: const Size.fromHeight(48.0)
          ),
        ),
        body: new TabBarView(
          controller: _tabController,
          children: choices.map((Choice choice){
            return new Padding(
              padding: const EdgeInsets.all(16.0),
              child: new ChoiceCard(choice: choice),
            );
          }).toList(),
        ),
      ),
    );
  }

}

class Choice{
  const Choice({this.title,this.icon});
  final String title;
  final IconData icon;
}

const List<Choice> choices = const <Choice>[
  const Choice(title: 'CAR', icon: Icons.directions_car),
  const Choice(title: 'BICYCLE', icon: Icons.directions_bike),
  const Choice(title: 'BOAT', icon: Icons.directions_boat),
  const Choice(title: 'BUS', icon: Icons.directions_bus),
  const Choice(title: 'TRAIN', icon: Icons.directions_railway),
  const Choice(title: 'WALK', icon: Icons.directions_walk),
];


class ChoiceCard extends StatelessWidget {
  const ChoiceCard({Key key, this.choice}) : super(key:key);
  final Choice choice;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final TextStyle textStyle = Theme.of(context).textTheme.display1;
    return new Card(
      color: Colors.white,
      child: new Center(
        child: new Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            new Icon(choice.icon, size: 128.0, color: textStyle.color),
            new Text(choice.title, style: textStyle)
          ],
        ),
      ),
    );
  }

}

void main(){
  runApp(new AppBarBottomSample());
}