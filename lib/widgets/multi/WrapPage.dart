import 'package:flutter/material.dart';

/// 流式布局
class WrapPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("流式布局示例"),
      ),
      body: Flow1(),
    );
  }
}

/// 流式布局
/// 当子控件主轴方向展示不下，会自动换行
/// 跟线性布局类型，唯一的区别就是会自动换行
/// 常用属性：
///       direction 子控件布局方向；默认 Axis.horizontal
///       alignment 主轴方向子控件位置
///       spacing 主轴方向子控件间距
///       runSpacing  纵轴方向子控件间距
///       runAlignment  纵轴方向子控件布局方式；由于纵轴是warp_content，看不出效果
///       crossAxisAlignment  ???跟runAlignment有什么区别？
///       children  子控件集合
class Wrap1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      direction: Axis.horizontal,
      alignment: WrapAlignment.center,
      spacing: 8.0,
      runSpacing: 4.0,
      runAlignment: WrapAlignment.center,
      crossAxisAlignment:WrapCrossAlignment.center,
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
        Container(
          height: 60.0,
          width: 60.0,
          alignment: Alignment.center,
          color: Colors.blue,
          child: Text("C"),
        ),
        Container(
          height: 50.0,
          width: 50.0,
          alignment: Alignment.center,
          color: Colors.black,
          child: Text("D"),
        ),
        Container(
          height: 40.0,
          width: 40.0,
          alignment: Alignment.center,
          color: Colors.green,
          child: Text("E"),
        ),
        Container(
          height: 60.0,
          width: 60.0,
          alignment: Alignment.center,
          color: Colors.red,
          child: Text("F"),
        ),
        Container(
          height: 70.0,
          width: 70.0,
          alignment: Alignment.center,
          color: Colors.pink,
          child: Text("G"),
        ),
        Container(
          height: 80.0,
          width: 80.0,
          alignment: Alignment.center,
          color: Colors.amber,
          child: Text("H"),
        ),
      ],
    );
  }
}

/// 自定义流式布局
/// 需要自己实现子widget的位置转换
/// 优点：性能好、灵活；缺点：使用复杂
/// 常用属性：
///       children  子控件集合
class Flow1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Flow(
      delegate: TestFlowDelegate(margin: EdgeInsets.all(10.0)),
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
        Container(
          height: 60.0,
          width: 60.0,
          alignment: Alignment.center,
          color: Colors.blue,
          child: Text("C"),
        ),
        Container(
          height: 50.0,
          width: 50.0,
          alignment: Alignment.center,
          color: Colors.black,
          child: Text("D"),
        ),
        Container(
          height: 40.0,
          width: 40.0,
          alignment: Alignment.center,
          color: Colors.green,
          child: Text("E"),
        ),
        Container(
          height: 60.0,
          width: 60.0,
          alignment: Alignment.center,
          color: Colors.red,
          child: Text("F"),
        ),
        Container(
          height: 70.0,
          width: 70.0,
          alignment: Alignment.center,
          color: Colors.pink,
          child: Text("G"),
        ),
        Container(
          height: 80.0,
          width: 80.0,
          alignment: Alignment.center,
          color: Colors.amber,
          child: Text("H"),
        ),
      ],
    );
  }
}


class TestFlowDelegate extends FlowDelegate {

  EdgeInsets margin = EdgeInsets.zero;
  TestFlowDelegate({required this.margin});

  @override
  void paintChildren(FlowPaintingContext context) {
    var x = margin.left;
    var y = margin.top;
    // 计算每一个子widget的位置
    for (int i = 0; i < context.childCount; i++) {
      var w = context.getChildSize(i)!.width + x + margin.right;
      if (w < context.size.width) {
        context.paintChild(i,
            transform: new Matrix4.translationValues(
                x, y, 0.0));
        x = w + margin.left;
      } else {
        x = margin.left;
        y += context.getChildSize(i)!.height + margin.top + margin.bottom;
        // 绘制子widget(有优化)
        context.paintChild(i,
            transform: new Matrix4.translationValues(
                x, y, 0.0));
        x += context.getChildSize(i)!.width + margin.left + margin.right;
      }
    }
  }

  @override
  getSize(BoxConstraints constraints){
    // 指定Flow的大小
    return Size(double.infinity,200.0);
  }

  @override
  bool shouldRepaint(FlowDelegate oldDelegate) {
    return oldDelegate != this;
  }

}
