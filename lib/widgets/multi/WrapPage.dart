import 'package:flutter/material.dart';

/// 流式布局
class WrapPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("流式布局示例"),
      ),
      body: Wrap1(),
    );
  }
}

/// 流式布局
/// 当子控件主轴方向展示不下，会自动换行
/// 跟线性布局类型，唯一的区别就是会自动换行
/// 常用属性：
///       direction 子控件布局方向；默认 Axis.horizontal
///       spacing 主轴方向子控件间距
///       runSpacing  纵轴方向子控件间距
///       children  子控件集合
class Wrap1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Wrap(
      direction: Axis.horizontal,
      spacing: 8.0, // 主轴(水平)方向间距
      runSpacing: 4.0, // 纵轴（垂直）方向间距
      children: [
        Container(
          height: 80.0,
          width: 80.0,
          color: Colors.red,
          child: Text("A"),
        ),
        Container(
          height: 80.0,
          width: 80.0,
          color: Colors.yellow,
          child: Text("B"),
        ),
        Container(
          height: 80.0,
          width: 80.0,
          color: Colors.blue,
          child: Text("C"),
        ),
        Container(
          height: 80.0,
          width: 80.0,
          color: Colors.black,
          child: Text("D"),
        ),
        Container(
          height: 80.0,
          width: 80.0,
          color: Colors.green,
          child: Text("E"),
        ),
        Container(
          height: 80.0,
          width: 80.0,
          color: Colors.red,
          child: Text("F"),
        ),
        Container(
          height: 80.0,
          width: 80.0,
          color: Colors.pink,
          child: Text("G"),
        ),
        Container(
          height: 80.0,
          width: 80.0,
          color: Colors.amber,
          child: Text("H"),
        ),
      ],
    );
  }

}


