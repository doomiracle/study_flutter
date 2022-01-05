import 'package:flutter/material.dart';

import 'getx/GetXApp.dart';
import 'page/main/MainPage.dart';

/// 应用启动方法
void main() {
  // 入口方法
  runApp(MainApp());
  // runApp(GetXApp());
}

/// 主应用
/// Material风格
/// Flutter Sample 应用
class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 创建一个MD风格的APP
    return MaterialApp(
      title: 'Flutter Sample',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainPage(),
    );
  }
}
