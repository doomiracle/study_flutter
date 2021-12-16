import 'package:flutter/material.dart';
import '/sample/widget/single/ContainerSample.dart';

/// 容器
class ContainerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("容器示例"),
      ),
      body: DecoratedBox1(),
    );
  }
}
