import 'package:flutter/material.dart';
import '/sample/widget/single/AlignSample.dart';

/// 排列对齐
/// Align
/// Center
class AlignPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("定位示例"),
      ),
      body: Container(
        width: 200.0,
        height: 200.0,
        color: Colors.yellow,
        child: Align1(),
      ),
    );
  }
}
