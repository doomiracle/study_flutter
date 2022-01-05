import 'package:flutter/material.dart';
import '/page/navigator/NavigatorPage.dart';
import '/sample/widget/basic/ButtonSample.dart';
import '/page/animation/AnimationPage.dart';
import '/page/file/FilePage.dart';
import '/page/future/FuturePage.dart';
import '/page/http/HttpPage.dart';
import '/page/theme/ThemePage.dart';
import '/page/widget/WidgetPage.dart';

/// 主界面
class MainPage extends StatelessWidget {
  /// 导航到一个新界面
  void _navigatorPush(BuildContext context, Widget widget) {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return widget;
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter示例"),
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Wrap(
          spacing: 16.0,
          runSpacing: 16.0,
          children: <Widget>[
            ElevatedButton1(
              data: "导航",
              onPressed: () => _navigatorPush(context, NavigatorPage()),
            ),
            ElevatedButton1(
              data: "组件",
              onPressed: () => _navigatorPush(context, WidgetPage()),
            ),
            ElevatedButton1(
              data: "主题",
              onPressed: () => _navigatorPush(context, ThemePage()),
            ),
            ElevatedButton1(
              data: "异步UI",
              onPressed: () => _navigatorPush(context, FuturePage()),
            ),
            ElevatedButton1(
              data: "动画",
              onPressed: () => _navigatorPush(context, AnimationPage()),
            ),
            ElevatedButton1(
              data: "文件操作",
              onPressed: () => _navigatorPush(context, FilePage()),
            ),
            ElevatedButton1(
              data: "网络请求",
              onPressed: () => _navigatorPush(context, HttpPage()),
            ),
          ],
        ),
      ),
    );
  }
}
