import 'package:flutter/material.dart';
import 'dart:convert';
import 'dart:io';

void main(){
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {


  void getWeatherData() async {
    try {
      // 实例化一个 HttpClient 对象
      HttpClient httpClient = new HttpClient();

      // 发起请求
      // HttpClientRequest request = await httpClient.getUrl(Uri.parse("https://raw.githubusercontent.com/facebook/react-native/0.51-stable/docs/MoviesExample.json"));

      Uri uri = new Uri(
        scheme: 'https',
        host: 'raw.githubusercontent.com',
        path: 'facebook/react-native/0.51-stable/docs/MoviesExample.json'
      );
      HttpClientRequest request = await httpClient.getUrl(uri);

      // 等待服务器返回数据
      HttpClientResponse response = await request.close();

      // 使用 utf8.decoder 从 response 里解析数据
      var result = await response.transform(utf8.decoder).join();

      // 输出响应头
      print(result);

      // httpClient 关闭
      httpClient.close();
    } catch (e) {
      print("请求失败： $e");
    } finally {

    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'HttpClient Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('HttpClient Demo'),
        ),
        body: Center(
          child: new RaisedButton(
            onPressed: getWeatherData,
            child: new Text('获取电影列表'),
          ),
        ),
      ),
    );
  }
}