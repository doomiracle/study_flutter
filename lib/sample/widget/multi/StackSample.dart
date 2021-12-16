import 'package:flutter/material.dart';

/// 层叠布局
/// 类似于 FrameLayout
/// 宽高默认warp_content
/// 常跟Positioned搭配使用
/// 常用属性：
///       alignment 子组件位置；如果使用的Positioned，不受该属性影响
///       fit 子组件大小；StackFit.loose 表示使用空间自身的大小，StackFit.expand 表示填充父布局(会撑大父布局)；使用Positioned的子组件，不受该属性影响
///       children  子控件集合
///
/// Position，绝对定位
///       left  离父容器左边边距
///       top 离父容器上边边距
///       right 离父容器右边边距
class Stack1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.center,
      fit: StackFit.loose,
      children: [
        Container(
          height: 80.0,
          width: 80.0,
          alignment: Alignment.center,
          color: Colors.red,
          child: Text("A"),
        ),
        Container(
          height: 70.0,
          width: 70.0,
          alignment: Alignment.center,
          color: Colors.yellow,
          child: Text("B"),
        ),
        Positioned(
          right: 18.0,
          child: Container(
            height: 60.0,
            width: 60.0,
            alignment: Alignment.center,
            color: Colors.blue,
            child: Text("C"),
          ),
        ),
      ],
    );
  }
}
