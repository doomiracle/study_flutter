import 'package:flutter/material.dart';

/// 文字常用属性
/// textAlign 文本对齐方式；对齐的参考系是Text本身，如果本身就是不满一行的，居中居右是没有意义的
/// maxLines  最大行数；默认情况下，文本是自动折行的
/// overflow  超长的内容显示方式；常与maxLines配合使用
/// textScaleFactor 相对于当前字体大小的缩放因子；默认1.0
/// style 文本风格；TextStyle
///                 color 文本颜色
///                 fontSize  字体大小
///                 fontStyle 文字风格；FontStyle.italic 斜体
///                 fontWeight  字重；FontWeight.bold  加粗
///                 height  行高；它并不是一个绝对值，而是一个因子，具体的行高等于 fontSize * height
///                 background  背景
///                 decoration  装饰
///                 decorationStyle  装饰风格
class Text1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      "这是一个最普通的文字" * 2, // 文字内容
      textAlign: TextAlign.left,
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
      textScaleFactor: 0.8,
      style: TextStyle(
          color: Colors.black,
          fontSize: 18.0,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.bold,
          height: 1.2,
          background: new Paint()..color = Colors.yellow,
          decoration: TextDecoration.underline,
          decorationStyle: TextDecorationStyle.dashed),
    );
  }
}

/// 富文本
/// TextSpan 表示文本片段，一个片段可以包含多个其它的片段
class TextRich1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text.rich(TextSpan(children: [
      TextSpan(text: "小明买了"),
      TextSpan(text: "8", style: TextStyle(color: Colors.red, fontSize: 18.0)),
      TextSpan(text: "个苹果"),
    ]));
  }
}

/// 默认样式
/// 当很多Text拥有相同的TextStyle时，可以用一个DefaultTextStyle包裹起来，给子节点设置相同的TextStyle
class DefaultTextStyle1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
        style: TextStyle(color: Colors.black, fontSize: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("这是一个默认样式"),
            Text(
              "不继承默认样式",
              style: TextStyle(
                  inherit: false, // 不继承默认样式
                  color: Colors.grey),
            )
          ],
        ));
  }
}