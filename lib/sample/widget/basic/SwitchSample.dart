import 'package:flutter/material.dart';

/// 单选开关
/// 只能定义宽度，高度也是固定的
/// 常用属性：
///       value 当前状态
///       activeColor 选中时的颜色
class Switch1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SwitchState1();
  }
}

class _SwitchState1 extends State<Switch1> {
  // 单选开关状态
  bool _switchSelected = false;

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: _switchSelected, //当前状态
      onChanged: (value) {
        // 重新构建页面
        setState(() {
          _switchSelected = value;
        });
      },
    );
  }
}

/// 勾选框
/// 大小是固定的，无法自定义
/// 常见属性：
///       value 当前状态
///       activeColor 选中时的颜色
class Checkbox1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CheckboxState1();
  }
}

class _CheckboxState1 extends State<Checkbox1> {
  // 勾选框状态
  bool? _checkboxSelected = false;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: _checkboxSelected,
      activeColor: Colors.red,
      onChanged: (value) {
        // 重新构建页面
        setState(() {
          _checkboxSelected = value;
        });
      },
    );
  }
}
