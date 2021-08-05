import 'package:flutter/material.dart';
import 'package:study_flutter/widgets/WidgetPage.dart';

void main() {
  // 入口方法
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 创建一个MD风格的APP
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  /// 导航到一个新界面
  void _navigatorPush(BuildContext context, Widget widget) {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return widget;
    }));
  }

  /// 弹出当前栈顶页面
  void _navigatorPop(BuildContext context) {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter示例"),
      ),
      body: Wrap(
        spacing: 8.0,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 10.0, right: 10.0),
            child: ElevatedButton(
              onPressed: () => _navigatorPush(context, WidgetPage()),
              child:
                  Text("Widget", style: TextStyle(fontWeight: FontWeight.bold)),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.blue),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
