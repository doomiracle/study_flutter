import 'package:flutter/material.dart';
import '/sample/widget/multi/WrapSample.dart';

/// 流式布局
class WrapPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("流式布局示例"),
      ),
      body: Flow1(),
    );
  }
}