import 'package:flutter/material.dart';

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

/// 对齐
/// 用于操作子控件的位置
/// 常用属性：
///       alignment 子控件位置
///
/// todo widthFactor 和 heightFactor 属性需要再了解一下
class Align1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      widthFactor: 2,
      heightFactor: 2,
      child: Container(
        width: 60.0,
        height: 60.0,
        color: Colors.red,
        alignment: Alignment.center,
        child: Text("A"),
      ),
    );
  }
}


/// 居中
/// 将子控件位置居中
class Center1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 60.0,
        height: 60.0,
        color: Colors.red,
        alignment: Alignment.center,
        child: Text("A"),
      ),
    );
  }
}
