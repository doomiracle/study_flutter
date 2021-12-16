import 'package:flutter/material.dart';
import '/sample/widget/multi/LinearLayoutSample.dart';

/// 线性布局
/// Row 表示水平布局
/// Column 表示垂直布局
/// Flex 弹性布局，是Row和Column的父类
class LinearLayoutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("选择控件示例"),
      ),
      body: Flex1(),
    );
  }
}