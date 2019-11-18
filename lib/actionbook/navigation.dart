import 'package:flutter/material.dart';

void main(){
  return runApp(MyApp());

}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      onGenerateRoute: (RouteSettings setting) {
        WidgetBuilder builder;
        switch(setting.name){
            case '/first':
              print(setting.arguments);
              builder = (BuildContext context) => new FirstPage(product: setting.arguments);
              break;
            case '/second':
              builder = (BuildContext context) => new SecondPage();
              break;
        }
        return new MaterialPageRoute(builder: builder, settings: setting);
      },
      theme: new ThemeData(
        primarySwatch: Colors.green
      ),
      title: 'Navigation Demo',
      home: new HomePage(
        productList: new List.generate(20, (i)=> new Product('商品$i', '这是一个商品详情$i')
        ),
      ),
    );
  }

}

class Product {
  final String title;
  final String description;

  Product(this.title,this.description);

}


class HomePage extends StatefulWidget {

  final List<Product> productList;

  HomePage({Key key, @required this.productList}) : super(key: key);


  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new HomePageState();
  }

}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Navigation Demo'),
      ),
      body: new ListView.builder(
        itemCount: widget.productList.length,
        itemBuilder: (context, index){
          var product = widget.productList[index];
          return new ListTile(
            title: new Text(product.title),
            subtitle: new Text(product.description),
            onTap: (){
              Navigator.pushNamed(context, '/first', arguments: product);
            },
          );
        }
      )
    );
  }
}


class FirstPage extends StatelessWidget {

  final Product product;


  FirstPage({Key key, @required this.product}) : super(key : key);

  @override
  Widget build(BuildContext context) {

    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('这是第一页'),
      ),
      body: new Center(
        child: new Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            new RaisedButton(
              onPressed: (){
                Navigator.pushNamed(context, '/second');
              },
              child: new Text(
                '这是第一页',
                style: new TextStyle(fontSize: 28.0),
              ),
            ),
            new Text(
              product.description,
              style: new TextStyle(fontSize: 28.0),
            )
          ],
        )
      ),
    );
  }
}


class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('这是第二页'),
      ),
      body: new Center(
        child: new RaisedButton(
          onPressed: (){
            Navigator.pop(context);
          },
          child: new Text(
            '这是第二页',
            style: new TextStyle(fontSize: 28.0),
          ),
        ),
      ),
    );
  }
}