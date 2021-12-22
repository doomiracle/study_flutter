import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:study_flutter/common/util/AppUtil.dart';

/// 悬浮按钮
/// 最常见的按钮之一
/// 在文字的基础上加上点击事件
/// onPressed 点击事件
/// child 按钮内容
/// style 按钮样式；ButtonStyle
///                 backgroundColor 背景色 MaterialStateProperty.all(Colors.blue), 也可以使用resolveWith... 跟随焦点改变
///                 foregroundColor 前景色 MaterialStateProperty.resolveWith...
///                 overlayColor  水波纹颜色 MaterialStateProperty.all(Colors.yellow),
///                 elevation 阴影(不适用于TextButton)  MaterialStateProperty.all(0),
///                 padding 按钮内边距 MaterialStateProperty.all(EdgeInsets.all(10)),
///                 minimumSize 按钮大小  MaterialStateProperty.all(Size(200, 100)),
///                 side  边框  MaterialStateProperty.all(BorderSide(color: Colors.grey, width: 1)),
///                 shape 外边框装饰；会覆盖 side 配置的样式  MaterialStateProperty.all(StadiumBorder()),
class ElevatedButton1 extends StatelessWidget {
  // 文字
  final String? data;

  // 点击事件
  final VoidCallback? onPressed;

  // 构造函数
  ElevatedButton1({this.data, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      // 点击事件
      onPressed: onPressed,
      // 内容，当然这里也可以不是Text
      child: Text(
        data ?? "悬浮按钮",
        style: TextStyle(
          fontSize: 20,
        ),
      ),
      // 样式
      style: ButtonStyle(
        // 背景色
        backgroundColor: MaterialStateProperty.all(Colors.blue),
        // 内边距
        padding: MaterialStateProperty.all(EdgeInsets.all(16)),
      ),
    );
  }
}

/// 文本按钮
/// 在文字的基础上加上点击事件
/// onPressed 点击事件
/// child 按钮内容
/// style 按钮样式；ButtonStyle
///                 backgroundColor 背景色 MaterialStateProperty.all(Colors.blue), 也可以使用resolveWith... 跟随焦点改变
///                 foregroundColor 前景色 MaterialStateProperty.resolveWith...
///                 overlayColor  水波纹颜色 MaterialStateProperty.all(Colors.yellow),
///                 elevation 阴影(不适用于TextButton)  MaterialStateProperty.all(0),
///                 padding 按钮内边距 MaterialStateProperty.all(EdgeInsets.all(10)),
///                 minimumSize 按钮大小  MaterialStateProperty.all(Size(200, 100)),
///                 side  边框  MaterialStateProperty.all(BorderSide(color: Colors.grey, width: 1)),
///                 shape 外边框装饰；会覆盖 side 配置的样式  MaterialStateProperty.all(StadiumBorder()),
class TextButton1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        showToast("文本按钮点击事件...");
      },
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.white),
        foregroundColor: MaterialStateProperty.resolveWith(
          (states) {
            if (states.contains(MaterialState.focused) &&
                !states.contains(MaterialState.pressed)) {
              // 获取焦点时的颜色
              return Colors.blue;
            } else if (states.contains(MaterialState.pressed)) {
              // 按下时的颜色
              return Colors.deepPurple;
            }
            //默认状态使用灰色
            return Colors.grey;
          },
        ),
        minimumSize: MaterialStateProperty.all(Size(200, 100)),
        side:
            MaterialStateProperty.all(BorderSide(color: Colors.red, width: 1)),
        shape: MaterialStateProperty.all(StadiumBorder()),
      ),
      child: Text(
        "文本按钮",
        style: TextStyle(color: Colors.black),
      ),
    );
  }
}

/// 扁平按钮
/// 默认有边框，不带阴影且背景透明的按钮；按下后边框颜色会变亮，同时出现背景和阴影
class OutlinedButton1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {
        showToast("扁平按钮点击事件...");
      },
      child: Text("扁平按钮"),
    );
  }
}

/// 图标按钮
class IconButton1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IconButton(
        icon: Icon(Icons.thumb_up),
        onPressed: () {
          showToast("图标按钮点击事件...");
        });
  }
}

/// 带图标的按钮
class OutlinedButtonIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
        icon: Icon(Icons.send),
        label: Text("发送"),
        onPressed: () {
          showToast("图标按钮点击事件...");
        });
  }
}
