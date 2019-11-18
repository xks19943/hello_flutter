import 'package:flutter/material.dart';

void main(){
  return runApp(LoginPage());
}

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new LoginPageState();
  }

}

class LoginPageState extends State<LoginPage> {

  //全局Key用来获取Form表单组件
  GlobalKey<FormState> loginKey = new GlobalKey<FormState>();

  String name;
  String password;


  void login() {
    var loginForm = loginKey.currentState;

    if(loginForm.validate()){
      loginForm.save();
      print('userName:' + name + ' password: ' + password);
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: 'Form Demo',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Form 表单示例'),
        ),
        body: new Column(
          children: <Widget>[
            new Container(
              padding: const EdgeInsets.all(16.0),
              child: new Form(
                key: loginKey,
                child: new Column(
                  children: <Widget>[
                    new TextFormField(
                      decoration: new InputDecoration(
                        labelText: '请输入用户名'
                      ),
                      onSaved: (value) {
                        name = value;
                      },
                    ),
                    new TextFormField(
                      decoration: new InputDecoration(
                        labelText: '请输入密码',
                      ),
                      obscureText: true,
                      onSaved: (value) {
                        password = value;
                      },
                      validator: (value){
                        return value.length < 6 ? '密码长度不够6位' : null;
                      },
                    ),

                  ],
                )
              ),
            ),
            new SizedBox(
              width: 340.0,
              height: 42.0,
              child: new RaisedButton(
                onPressed: login,
                child: new Text(
                  '登录',
                  style: TextStyle(
                    fontSize: 18.0
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

}