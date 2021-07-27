import 'package:flutter/material.dart';

/// 文本输入框
class TextFieldPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("输入框示例"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(padding: EdgeInsets.all(5.0), child: TextField1()),
          Padding(padding: EdgeInsets.all(5.0), child: TextField1()),
        ],
      ),
    );
  }
}

/// 文本输入框
/// 常用属性：
///       autofocus 是否自动获取焦点
///       decoration 描述
///       obscureText 是否内容不可见
class TextField1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SwitchState1();
  }
}

class _SwitchState1 extends State<TextField1> {

  // 控制器
  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextField(
      autofocus: true,
      decoration:
          InputDecoration(hintText: "用户名或邮箱", prefixIcon: Icon(Icons.person)),
      controller: _controller,
    );
  }
}
