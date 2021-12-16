import 'package:flutter/material.dart';

/// 进度展示
/// 我们可以发现LinearProgressIndicator和CircularProgressIndicator，并没有提供设置圆形进度条尺寸的参数；
/// 其实LinearProgressIndicator和CircularProgressIndicator都是取父容器的尺寸作为绘制的边界的。知道了这点，我们便可以通过尺寸限制类Widget，如ConstrainedBox、SizedBox （我们将在后面容器类组件一章中介绍）来指定尺寸
class ProgressPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("进度示例"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
              padding: EdgeInsets.all(5.0), child: LinearProgressIndicator1()),
          Padding(
              padding: EdgeInsets.all(5.0),
              child: CircularProgressIndicator1()),
        ],
      ),
    );
  }
}

/// 线性进度指示器
/// 常用属性：
///       backgroundColor 背景颜色
///       valueColor  进度颜色
///       value 进度；如果没有指定进度，会播放一个循环动画
class LinearProgressIndicator1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LinearProgressIndicator(
      backgroundColor: Colors.grey,
      valueColor: AlwaysStoppedAnimation(Colors.red),
      value: 0.5,
    );
  }
}

/// 圆形进度指示器
/// 常用属性：
///       backgroundColor 背景颜色
///       valueColor  进度颜色
///       value 进度；如果没有指定进度，会播放一个循环动画
///       strokeWidth 进度条的宽度
class CircularProgressIndicator1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CircularProgressIndicator(
        backgroundColor: Colors.grey,
        valueColor: AlwaysStoppedAnimation(Colors.red),
        strokeWidth: 3.0,
    );
  }
}
