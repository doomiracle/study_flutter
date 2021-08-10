import 'package:flutter/material.dart';

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

/// SingleChildScrollView
/// 滚动布局，类似于 android 中的 ScrollView
/// 应在期望的内容不会超过屏幕太多时使用，这是因为SingleChildScrollView不支持基于Sliver的延迟实例化模型，所以如果预计视口可能包含超出屏幕尺寸太多的内容时，那么使用SingleChildScrollView将会非常昂贵（性能差）
/// 常用属性：
///       scrollDirection 滚动方向，默认是垂直方向
///
class SingleChildScrollView1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(50.0),
            constraints: BoxConstraints(minWidth: double.infinity),
            color: Colors.red,
            child: Text("A"),
          ),
          Container(
            padding: EdgeInsets.all(50.0),
            constraints: BoxConstraints(minWidth: double.infinity),
            color: Colors.yellow,
            child: Text("B"),
          ),
          Container(
            padding: EdgeInsets.all(50.0),
            constraints: BoxConstraints(minWidth: double.infinity),
            color: Colors.blue,
            child: Text("C"),
          ),
          Container(
            padding: EdgeInsets.all(50.0),
            constraints: BoxConstraints(minWidth: double.infinity),
            color: Colors.cyanAccent,
            child: Text("D"),
          ),
          Container(
            padding: EdgeInsets.all(50.0),
            constraints: BoxConstraints(minWidth: double.infinity),
            color: Colors.pink,
            child: Text("E"),
          ),
          Container(
            padding: EdgeInsets.all(50.0),
            constraints: BoxConstraints(minWidth: double.infinity),
            color: Colors.green,
            child: Text("F"),
          ),
          Container(
            padding: EdgeInsets.all(50.0),
            constraints: BoxConstraints(minWidth: double.infinity),
            color: Colors.grey,
            child: Text("G"),
          ),
          Container(
            padding: EdgeInsets.all(50.0),
            constraints: BoxConstraints(minWidth: double.infinity),
            color: Colors.blueAccent,
            child: Text("H"),
          ),
          Container(
            padding: EdgeInsets.all(50.0),
            constraints: BoxConstraints(minWidth: double.infinity),
            color: Colors.green,
            child: Text("I"),
          ),
          Container(
            padding: EdgeInsets.all(50.0),
            constraints: BoxConstraints(minWidth: double.infinity),
            color: Colors.pink,
            child: Text("J"),
          ),
        ],
      ),
    );
  }
}
