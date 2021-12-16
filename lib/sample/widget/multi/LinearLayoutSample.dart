import 'package:flutter/material.dart';

/// 水平布局
/// 将子控件水平排列
/// 常用属性：
///       textDirection 水平方向子组件的布局顺序；默认从左往右
///       mainAxisSize  主轴方向占用空间；默认MainAxisSize.max,表示Row宽度等于最大宽度
///       mainAxisAlignment 主轴子控件布局；默认MainAxisAlignment.start
///       verticalDirection 纵轴对齐方向；默认VerticalDirection.down,表是从上到下
///       crossAxisAlignment  纵轴子控件布局；默认CrossAxisAlignment.center
///       children  子控件集合
class Row1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      textDirection: TextDirection.ltr,
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      verticalDirection: VerticalDirection.down,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.all(20.0),
          color: Colors.orange,
          child: Text("A"),
        ),
        Container(
          padding: EdgeInsets.all(30.0),
          color: Colors.blue,
          child: Text("B"),
        ),
        Container(
          padding: EdgeInsets.all(40.0),
          color: Colors.red,
          child: Text("C"),
        ),
      ],
    );
  }
}

/// 垂直布局
/// 将子控件垂直排列
/// 常用属性：
///       crossAxisAlignment  纵轴子控件布局；默认CrossAxisAlignment.center
///       children  子控件集合
class Column1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.all(20.0),
          color: Colors.orange,
          child: Text("A"),
        ),
        Container(
          padding: EdgeInsets.all(30.0),
          color: Colors.blue,
          child: Text("B"),
        ),
        Container(
          padding: EdgeInsets.all(40.0),
          color: Colors.red,
          child: Text("C"),
        ),
      ],
    );
  }
}

/// 弹性布局
/// 是Row和Column的父类，允许子组件按照一定比例来分配父容器空间
/// 与Expanded配合可以按比例分配父容器空间
/// 常用属性(其它属性参照Row)：
///       direction  布局方向
///
/// Expanded：
///       flex  弹性系数；如果为0或null，子控件包裹布局
///
/// Spacer 表示占位，仅用来占位置
class Flex1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: Axis.horizontal,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 1,
          child: Container(
            height: 40.0,
            width: 40.0,
            color: Colors.orange,
            child: Text("A"),
          ),
        ),
        Spacer(
          flex: 1,
        ),
        Container(
          height: 60.0,
          width: 60.0,
          color: Colors.blue,
          child: Text("B"),
        ),
        Container(
          height: 80.0,
          width: 80.0,
          color: Colors.red,
          child: Text("C"),
        ),
      ],
    );
  }
}