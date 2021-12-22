import 'package:flutter/material.dart';
import '/sample/widget/basic/ButtonSample.dart';
import 'basic/TextPage.dart';
import 'basic/ButtonPage.dart';
import 'basic/ImagePage.dart';
import 'basic/ProgressPage.dart';
import 'basic/SwitchPage.dart';
import 'basic/TextFieldPage.dart';
import 'single/ScaffoldPage.dart';
import 'single/ContainerPage.dart';
import 'single/AlignPage.dart';
import 'single/ScrollLayoutPage.dart';
import 'multi/LinearLayoutPage.dart';
import 'multi/WrapPage.dart';
import 'multi/StackPage.dart';
import 'multi/ListLayoutPage.dart';
import 'functional/WillPopScopePage.dart';
import 'functional/InheritedWidgetPage.dart';

/// Widget
class WidgetPage extends StatelessWidget {
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
        title: Text("Widget"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              'Basic Widget',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.0, right: 10.0),
            child: Wrap(
              spacing: 8.0,
              runSpacing: 8.0,
              children: [
                ElevatedButton1(
                  data: "文本",
                  onPressed: () => _navigatorPush(context, TextPage()),
                ),
                ElevatedButton1(
                  data: "按钮",
                  onPressed: () => _navigatorPush(context, ButtonPage()),
                ),
                ElevatedButton1(
                  data: "图片",
                  onPressed: () => _navigatorPush(context, ImagePage()),
                ),
                ElevatedButton1(
                  data: "输入框",
                  onPressed: () => _navigatorPush(context, TextFieldPage()),
                ),
                ElevatedButton1(
                  data: "开关控件",
                  onPressed: () => _navigatorPush(context, SwitchPage()),
                ),
                ElevatedButton1(
                  data: "进度指示器",
                  onPressed: () => _navigatorPush(context, ProgressPage()),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              'SingleChild Widget',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.0, right: 10.0),
            child: Wrap(
              spacing: 8.0,
              children: [
                ElevatedButton1(
                  data: "脚手架",
                  onPressed: () => _navigatorPush(context, ScaffoldPage()),
                ),
                ElevatedButton1(
                  data: "容器",
                  onPressed: () => _navigatorPush(context, ContainerPage()),
                ),
                ElevatedButton1(
                  data: "排列对齐",
                  onPressed: () => _navigatorPush(context, AlignPage()),
                ),
                ElevatedButton1(
                  data: "滚动布局",
                  onPressed: () => _navigatorPush(context, ScrollLayoutPage()),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              'MultiChild Widget',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.0, right: 10.0),
            child: Wrap(
              spacing: 8.0,
              runSpacing: 8.0,
              children: [
                ElevatedButton1(
                  data: "线性布局",
                  onPressed: () => _navigatorPush(context, LinearLayoutPage()),
                ),
                ElevatedButton1(
                  data: "流式布局",
                  onPressed: () => _navigatorPush(context, WrapPage()),
                ),
                ElevatedButton1(
                  data: "层叠布局",
                  onPressed: () => _navigatorPush(context, StackPage()),
                ),
                ElevatedButton1(
                  data: "列表布局",
                  onPressed: () => _navigatorPush(context, ListLayoutPage()),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              '功能型组件',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.0, right: 10.0),
            child: Wrap(
              spacing: 8.0,
              runSpacing: 8.0,
              children: [
                ElevatedButton1(
                  data: "导航返回拦截",
                  onPressed: () => _navigatorPush(context, WillPopScopePage()),
                ),
                ElevatedButton1(
                  data: "数据共享",
                  onPressed: () => _navigatorPush(context, InheritedWidgetPage()),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
