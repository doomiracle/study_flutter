import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import '/routes/getx/GetRoutes.dart';
import 'page/getx/GetXPage.dart';
import 'page/main/MainPage.dart';

/// 应用启动方法
void main() {
  // 入口方法
  // runApp(MainApp());
  runApp(GetXApp());
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

/// GetX 应用
/// Material风格
/// 通过 GetX 这个框架实现 路由管理、状态管理、依赖管理
/// 注意：如果仅仅只用到了 状态管理，是可以不用创建 GetMaterialApp 的
class GetXApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 将 MaterialApp 替换为 GetMaterialApp
    return GetMaterialApp(
      // 首页
      home: GetXPage(),
      // 所有的页面和名称
      getPages: GetRoutes.pages,
    );
  }
}
