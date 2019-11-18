import 'package:flutter/material.dart';

void main(){
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {

  final List<String> items = new List.generate(500, (i)=> "Item $i");

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'ListView Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('ListView Demo'),
        ),
        /*body: new ListView(
          children: <Widget>[
            new ListTile(
              leading: Icon(Icons.alarm),
              title: Text('alarm'),
            ),
            new ListTile(
              leading: Icon(Icons.airplay),
              title: Text('airplay'),
            ),
            new ListTile(
              leading: Icon(Icons.phone),
              title: Text('phone'),
            ),
            new ListTile(
              leading: Icon(Icons.alarm),
              title: Text('alarm'),
            ),
            new ListTile(
              leading: Icon(Icons.alarm),
              title: Text('alarm'),
            ),
            new ListTile(
              leading: Icon(Icons.alarm),
              title: Text('alarm'),
            ),
            new ListTile(
              leading: Icon(Icons.alarm),
              title: Text('alarm'),
            ),
          ],
        )*/
        /*body: new ListView.builder(
          itemCount: items.length,
          itemBuilder: (BuildContext context, int index){
            return new ListTile(
              leading: new Icon(Icons.phone),
              title: new Text('${items[index]}'),
            );
          }
        ),*/
        /*body: CustomScrollView(
          shrinkWrap: true,
          slivers: <Widget>[
            SliverPadding(
              padding: const EdgeInsets.all(20.0),
              sliver: SliverList(
                delegate: SliverChildListDelegate(
                  <Widget>[
                    const Text('I\'m dedicating every day to you'),
                    const Text('Domestic life was never quite my style'),
                    const Text('When you smile, you knock me out, I fall apart'),
                    const Text('And I thought I was so smart'),
                  ],
                ),
              ),
            ),
          ],
        ),*/
        body: new GridView.count(
          crossAxisCount: 2,
          primary: false,
          padding: new EdgeInsets.all(10.0),
          crossAxisSpacing: 10.0,
          children: <Widget>[
            const Text('He\'d have you all unravel at the'),
            const Text('Heed not the rabble'),
            const Text('Sound of screams but the'),
            const Text('Who scream'),
            const Text('Revolution is coming...'),
            const Text('Revolution, they...')
          ],

        ),
      ),
    );
  }
}