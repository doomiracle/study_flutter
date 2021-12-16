import 'package:flutter/material.dart';


class WillPopScope1 extends StatefulWidget {
  @override
  _WillPopScopeState createState() {
    return new _WillPopScopeState();
  }
}

/// 导航返回拦截
/// onWillPop 用户点击返回按钮时被调用，包括导航返回按钮及Android物理返回按钮），返回值为 false，拦截不处理
class _WillPopScopeState extends State<WillPopScope1> {
  //上次点击时间
  DateTime? _lastPressedAt;

  @override
  Widget build(BuildContext context) {
    return new WillPopScope(
        onWillPop: () async {
          if (_lastPressedAt == null || DateTime.now().difference(_lastPressedAt!) > Duration(seconds: 1)) {
            //两次点击间隔超过1秒则重新计时
            _lastPressedAt = DateTime.now();
            return false;
          }
          return true;
        },
        child: Container(
          alignment: Alignment.center,
          child: Text("1秒内连续按两次返回键退出"),
        ));
  }
}
