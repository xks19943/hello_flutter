import 'package:flutter/material.dart';
import 'app.dart';
import 'loading.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'search.dart';

void main(){
  runApp(new IMApp());
  return;
}

class IMApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      debugShowCheckedModeBanner: true,
      title: '聊天室',
      theme: mDefaultTheme,
      routes: <String, WidgetBuilder> {
        "app": (BuildContext context)=> new App(),
        "/friends": (_)=> new WebviewScaffold(
          url: 'https://flutter.io/',
          appBar: new AppBar(
            title: new Text('Flutter官网'),
          ),
          withZoom: true,
          withLocalStorage: true,
        ),
        "search": (BuildContext context)=> new SearchPage(),
      },
      home: new LoadingPage(),
    );
  }

}

final ThemeData mDefaultTheme = new ThemeData(
  primaryColor: Colors.green,
  scaffoldBackgroundColor: Color(0xFFebebeb),
  cardColor: Colors.green
);