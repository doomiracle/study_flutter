import 'package:flutter/material.dart';
import '/sample/widget/single/ScrollLayoutSample.dart';

/// 滚动布局
class ScrollLayoutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("滚动布局示例"),
      ),
      body: SingleChildScrollView1(),
    );
  }
}
