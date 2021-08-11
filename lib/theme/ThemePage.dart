import 'package:flutter/material.dart';

/// 主题
/// Theme
/// 保存是Material 组件库的主题数据，Material组件需要遵守相应的设计规范，而这些规范可自定义部分都定义在ThemeData中了，所以我们可以通过ThemeData来自定义应用主题。在子组件中，我们可以通过Theme.of方法来获取当前的ThemeData
/// ThemeData常用属性：
///         primarySwatch 主题颜色样本；如果主色、次级色等颜色没有特别去指定的情况，都会去读取主题颜色样本，算是一个通用的颜色指定
///         primaryColor  主色，决定导航栏颜色
///         accentColor 次级色，决定大多数Widget的颜色，如进度条、开关等
///         cardColor 卡片颜色
///         dividerColor  分割线颜色
///         cursorColor 输入框光标颜色
///         dialogBackgroundColor 对话框背景颜色
class ThemePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ThemePageState();
  }
}

class _ThemePageState extends State<ThemePage> {
  /// 主题色
  Color _themeColor = Colors.teal;

  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);
    return Theme(
      data: ThemeData(
        primarySwatch: _themeColor,
        iconTheme: IconThemeData(color: _themeColor),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text("主题示例"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // 第一行Icon使用主题中的iconTheme
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(Icons.favorite),
                Icon(Icons.airport_shuttle),
                Text("  颜色跟随主题")
              ],
            ),
            // 为第二行Icon自定义颜色（固定为黑色)
            Theme(
              data: themeData.copyWith(
                iconTheme: themeData.iconTheme.copyWith(color: Colors.black),
              ),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.favorite),
                    Icon(Icons.airport_shuttle),
                    Text("  颜色固定黑色")
                  ]),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => //切换主题
              setState(() => _themeColor =
                  _themeColor == Colors.teal ? Colors.blue : Colors.teal),
          child: Icon(Icons.palette),
        ),
      ),
    );
  }
}
