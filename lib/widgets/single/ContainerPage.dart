import 'package:flutter/material.dart';

/// 容器
class ContainerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("容器示例"),
      ),
      body: Container1(),
    );
  }
}

/// 容器
/// 容器是布局中用到最多的组件，默认宽高是match_parent
/// 常用属性：
///       alignment 子控件位置
///       margin  外边距
///       padding 内边距
///       constraints 容器大小的限制条件；BoxConstraints.expand() 表示子组件宽高变为match_parent
///       width 容器的宽度；constraints优先级高
///       height  容器的高度；constraints优先级高
///       color 背景颜色；跟decoration不能同时指定，会直接报错
///       decoration  背景装饰；跟color不能同时制定，会直接报错
///       foregroundDecoration  前景装饰
class Container1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      margin: EdgeInsets.all(10.0),
      padding: EdgeInsets.all(10.0),
      constraints: BoxConstraints.expand(),
      width: 60.0,
      height: 60.0,
      color: Colors.green,
      child: Text("A"),
    );
  }
}


/// 限制框
/// 用于对子组件添加额外的约束；例如控制子组件的大小
/// 常用属性：
///       constraints 约束条件；BoxConstraints.expand() 表示子组件宽高变为match_parent
class ConstrainedBox1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints.expand(),
      child: Text("B"),
    );
  }
}
