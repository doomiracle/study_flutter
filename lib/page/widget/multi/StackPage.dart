import 'package:flutter/material.dart';
import '/sample/widget/multi/StackSample.dart';

/// 层叠布局
class StackPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("层叠布局示例"),
      ),
      body: Stack1(),
    );
  }
}