import 'package:flutter/material.dart';


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
///       constraints 约束条件；
///                       BoxConstraints.expand() 表示子组件宽高变为match_parent
///                       BoxConstraints(minWidth: double.infinity,)  表示子组件子组件宽度变为match_parent
///                       minWidth 最小宽度；maxWidth 最大宽度；minHeight 最小高度；maxHeight 最大高度
///                       BoxConstraints.tightFor(width: 80.0,height: 80.0) 固定宽高
///       child 子控件
class ConstrainedBox1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        minWidth: double.infinity,
      ),
      child: Container(
        color: Colors.red,
        width: 40.0,
        height: 40.0,
        child: Text("A"),
      ),
    );
  }
}

/// SizedBox
/// 设置子控件宽高，子控件的设置会失效；实质为ConstrainedBox的定制
/// 常用属性：
///       width 子控件的宽
///       height  子控件的搞
///       child 子控件
class SizedBox1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 80.0,
      height: 80.0,
      child: Container(
        color: Colors.red,
        width: 40.0,
        height: 40.0,
        child: Text("A"),
      ),
    );
  }
}

/// UnconstrainedBox
/// 去除限制
/// PS：这里虽然去除父控件的限制了，但是会有空白(父控件)，目前没有办法彻底去除父控件的限制
class UnconstrainedBox1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 80.0,
      height: 80.0,
      child: UnconstrainedBox(
        child: Container(
          color: Colors.red,
          width: 40.0,
          height: 40.0,
          child: Text("A"),
        ),
      ),
    );
  }
}

/// 装饰容器
/// 可以在容器上增加一些装饰
/// 常用属性：
///       decoration  绘制的装饰；它的类型为Decoration。Decoration是一个抽象类，它定义了一个接口 createBoxPainter()，子类的主要职责是需要通过实现它来创建一个画笔，该画笔用于绘制装饰
///                         BoxDecoration常用属性
///                                 color 颜色
///                                 image 图片
///                                 border  边框
///                                 borderRadius  圆角
///                                 boxShadow 阴影
///                                 gradient  渐边
///                                 backgroundBlendMode 背景混合模式
///                                 shape 形状
///       position  绘制的位置；默认 DecorationPosition.background ，背景
///       child 子控件
class DecoratedBox1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [Colors.red, Colors.orange]),
            borderRadius: BorderRadius.circular(3.0),
            boxShadow: [
              BoxShadow(
                  color: Colors.black54,
                  offset: Offset(2.0, 2.0),
                  blurRadius: 4.0)
            ]),
        position: DecorationPosition.background,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 80.0, vertical: 18.0),
          child: Text(
            "Login",
            style: TextStyle(color: Colors.white),
          ),
        ));
  }
}

/// 内边距
/// 一个自带内边距的容器，主要用来设置内边距
/// 常用属性：
///       padding 内边距
///       child 子控件
class Padding1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Container(
        color: Colors.red,
        width: 40.0,
        height: 40.0,
        child: Text("A"),
      ),
    );
  }
}
