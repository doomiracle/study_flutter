import 'package:flutter/material.dart';
import '/sample/widget/basic/SwitchSample.dart';

/// 选择控件：
///   单选开关
///   复选框
class SwitchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("选择控件示例"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(padding: EdgeInsets.all(5.0), child: Switch1()),
          Padding(padding: EdgeInsets.all(5.0), child: Checkbox1()),
        ],
      ),
    );
  }
}
