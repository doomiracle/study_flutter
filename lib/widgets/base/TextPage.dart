import 'package:flutter/material.dart';

/// 文本展示
class TextPage extends StatelessWidget {
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