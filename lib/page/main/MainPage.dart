import 'package:flutter/material.dart';
import '/page/animation/AnimationPage.dart';
import '/page/file/FilePage.dart';
import '/page/future/FuturePage.dart';
import '/page/http/HttpPage.dart';
import '/page/theme/ThemePage.dart';
import '/page/widget/WidgetPage.dart';
import '/page/widget/dialog/DialogPage.dart';

/// 主界面
class MainPage extends StatelessWidget {
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
            spacing: 10.0,
            runSpacing: 10.0,
            children: <Widget>[
              ElevatedButton(
                onPressed: () => _navigatorPush(context, WidgetPage()),
                child: Text(
                  "导航",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blue),
                ),
              ),
              ElevatedButton(
                onPressed: () => _navigatorPush(context, WidgetPage()),
                child: Text(
                  "Widget",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blue),
                ),
              ),
              ElevatedButton(
                onPressed: () => _navigatorPush(context, DialogPage()),
                child: Text(
                  "Dialog",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
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
