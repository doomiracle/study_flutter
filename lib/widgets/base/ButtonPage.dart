import 'package:flutter/material.dart';

/// 按钮展示
class ButtonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("文本"),
      ),
      body: Center(
        child: Text("This is new route"),
      ),
    );
  }
}