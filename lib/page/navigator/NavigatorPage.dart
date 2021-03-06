import 'package:flutter/material.dart';
import '/sample/widget/basic/ButtonSample.dart';
import 'NavigatorPageTwo.dart';

/// 导航页面
/// 用于展示界面的跳转，常见动作：
///     1. 导航到下一个页面 Navigator.push
///     2. 返回上一个页面  Navigator.pop
///     3. 导航到下一个页面并关闭调当前页面
///     4. 导航到下一个页面并关闭掉栈内所有页面
///     5. 返回栈中某个页面
class NavigatorPage extends StatelessWidget {
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
          title: Text("导航示例"),
        ),
        body: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 16),
                child: Text(
                  "界面1",
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
                    data: "跳转到界面2",
                    onPressed: () =>
                        _navigatorPush(context, NavigatorPageTwo()),
                  ),
                ],
              ),
            ],
          ),
        ));
  }


}
