import 'dart:convert';
import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: MyHomePage(
          // title: 'Flutter Demo',
          ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  // MyHomePage({Key key, this.title}) : super(key: key);
  // final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Test Demo"),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('测试数据接口'),
          onPressed: () async {
            String url = 'http://192.168.10.21:8081/test/first';
            var res = await http.get(url);
            String body = res.body;
            //解析json数据
            var json = jsonDecode(body);
            print(json);

            // 前端encode -> 后端decode
            // 前端decode -> 后端encode
          },
        ),
      ),
    );
  }
}

class Hello extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Hello',
        textDirection: TextDirection.ltr,
        style: TextStyle(
            fontSize: 40.0, fontWeight: FontWeight.bold, color: Colors.red),
      ),
    );
  }
}
