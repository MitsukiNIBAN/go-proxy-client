import 'dart:convert';
import "package:http/http.dart" as http;

import 'package:flutter/material.dart';

import 'stp.dart';
import 'subconfig.dart';
import 'support.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Proxy Config',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHome(),
    );
  }
}

class V2rayWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 16.0),
        Text(
          "V2ray",
          style: TextStyle(fontSize: 16),
        ),
        SizedBox(height: 16.0),
        FlatButton(child: Text("当前代理配置：(点击进行切换)"), onPressed: () {}),
        SizedBox(height: 16.0),
        Row(
          children: [
            FlatButton(child: Text("进程状态：未运行"), onPressed: () {}),
            SizedBox(width: 16.0),
            FlatButton(
                child: Text("启动/关闭进程"),
                color: Colors.black12,
                onPressed: () {}),
          ],
        )
      ],
    );
  }
}

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("代理配置"),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              titleText("订阅配置"),
              SubConfigWidget(),
              // SizedBox(height: 16.0),
              // titleText("代理进程配置"),
              // V2rayWidget(),
              SizedBox(height: 16.0),
              titleText("SS-TPROXY配置"),
              STPWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
