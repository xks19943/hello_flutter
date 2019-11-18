import 'package:flutter/material.dart';

class BasicAppBarSample extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new BasicAppBarSampleState();
  }

}

class BasicAppBarSampleState extends State<BasicAppBarSample>{


  Choice _selectedChoice = choices[0];

  void _select(Choice choice){
    this.setState((){
      _selectedChoice = choice;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Basic AppBar'),
          actions: <Widget>[
            new IconButton(
              icon: new Icon(choices[0].icon),
              onPressed: (){
                _select(choices[0]);
              }
            ),
            new IconButton(
              icon: new Icon(choices[1].icon),
              onPressed: (){
                _select(choices[1]);
              }
            ),
            new PopupMenuButton(
              onSelected: _select,
              itemBuilder: (BuildContext context){
                return choices.skip(2).map((Choice choice){
                  return new PopupMenuItem(
                    child: new Text(choice.title),
                    value: choice,
                  );
                }).toList();
              }
            )
          ],
        ),
        body: new Padding(
          padding: const EdgeInsets.all(16.0),
          child: new ChoiceCard(choice: _selectedChoice),
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
  ChoiceCard({Key key, this.choice}) : super(key:key);
  final Choice choice;

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
            new Icon(choice.icon, size: 128.0, color: textStyle.color),
            new Text(choice.title, style: textStyle)
          ],
        ),
      ),
    );
  }
}

void main(){
  runApp(new BasicAppBarSample());
}