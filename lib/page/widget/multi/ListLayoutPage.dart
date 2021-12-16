import 'package:flutter/material.dart';
import 'package:study_flutter/sample/widget/multi/ListLayoutSample.dart';

/// 列表布局
class ListLayoutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("列表布局示例"),
      ),
      body: GridView1(),
    );
  }
}
