import 'package:flutter/material.dart';

import 'widgets/WidgetPage.dart';
import 'dialog/DialogPage.dart';
import 'theme/ThemePage.dart';
import 'future/FuturePage.dart';
import 'animation/AnimationPage.dart';
import 'file/FilePage.dart';
import 'http/HttpPage.dart';

void main() {
  // 入口方法
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 创建一个MD风格的APP
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  /// 导航到一个新界面
  void _navigatorPush(BuildContext context, Widget widget) {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return widget;
    }));
  }

  /// 弹出当前栈顶页面
  void _navigatorPop(BuildContext context) {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Flutter示例"),
        ),
        body: Container(
          padding: EdgeInsets.all(10.0),
          child: Wrap(
            spacing: 8.0,
            children: <Widget>[
              ElevatedButton(
                onPressed: () => _navigatorPush(context, WidgetPage()),
                child: Text("Widget",
                    style: TextStyle(fontWeight: FontWeight.bold)),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blue),
                ),
              ),
              ElevatedButton(
                onPressed: () => _navigatorPush(context, DialogPage()),
                child: Text("Dialog",
                    style: TextStyle(fontWeight: FontWeight.bold)),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blue),
                ),
              ),
              ElevatedButton(
                onPressed: () => _navigatorPush(context, ThemePage()),
                child:
                    Text("主题", style: TextStyle(fontWeight: FontWeight.bold)),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blue),
                ),
              ),
              ElevatedButton(
                onPressed: () => _navigatorPush(context, FuturePage()),
                child:
                    Text("异步UI", style: TextStyle(fontWeight: FontWeight.bold)),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blue),
                ),
              ),
              ElevatedButton(
                onPressed: () => _navigatorPush(context, AnimationPage()),
                child:
                Text("动画", style: TextStyle(fontWeight: FontWeight.bold)),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blue),
                ),
              ),
              ElevatedButton(
                onPressed: () => _navigatorPush(context, FilePage()),
                child:
                Text("文件操作", style: TextStyle(fontWeight: FontWeight.bold)),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blue),
                ),
              ),
              ElevatedButton(
                onPressed: () => _navigatorPush(context, HttpPage()),
                child:
                Text("Http", style: TextStyle(fontWeight: FontWeight.bold)),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blue),
                ),
              ),
            ],
          ),
        ));
  }
}
