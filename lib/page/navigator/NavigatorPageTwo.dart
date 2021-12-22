import 'package:flutter/material.dart';
import '/sample/widget/basic/ButtonSample.dart';
import 'NavigatorPageThree.dart';

/// 导航页面2
class NavigatorPageTwo extends StatelessWidget {
  /// 导航到一个新界面
  void _navigatorPush(BuildContext context, Widget widget) {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return widget;
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Flutter示例"),
        ),
        body: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 16),
                child: Text(
                  "界面2",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
              Wrap(
                spacing: 16.0,
                runSpacing: 16.0,
                children: <Widget>[
                  ElevatedButton1(
                    data: "返回上一个界面",
                    // 通过 Navigator 的 pop() 方法可以弹出当前界面
                    onPressed: () => Navigator.pop(context),
                  ),
                  ElevatedButton1(
                    onPressed: () =>
                        _navigatorPush(context, NavigatorPageThree()),
                    data: "跳转到界面3",
                  ),
                  ElevatedButton1(
                    onPressed: () =>
                        _navigatorPush(context, NavigatorPageThree()),
                    data: "跳转到界面3，并销毁界面2",
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
