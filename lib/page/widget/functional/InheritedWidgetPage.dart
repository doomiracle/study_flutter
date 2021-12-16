import 'package:flutter/material.dart';
import '/sample/widget/functional/InheritedWidgetSample.dart';

/// 数据共享
class InheritedWidgetPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("数据共享示例"),
      ),
      body: InheritedWidgetTestRoute(),
    );
  }
}
