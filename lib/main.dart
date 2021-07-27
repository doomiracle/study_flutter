import 'package:flutter/material.dart';
import 'package:study_flutter/widgets/base/ButtonPage.dart';
import 'package:study_flutter/widgets/base/TextFieldPage.dart';
import 'package:study_flutter/widgets/base/TextPage.dart';
import 'package:study_flutter/widgets/base/ImagePage.dart';
import 'package:study_flutter/widgets/base/SwitchPage.dart';

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
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  /// 导航到一个新界面
  void navigatorPush(BuildContext context, Widget widget) {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return widget;
    }));
  }

  /// 弹出当前栈顶页面
  void navigatorPop(BuildContext context) {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
                padding: EdgeInsets.all(16.0),
                child: TextButton(
                    child: Text('文本'),
                    onPressed: () => navigatorPush(context, TextPage()),
                    style: ButtonStyle(
                      textStyle:
                          MaterialStateProperty.all(TextStyle(fontSize: 20)),
                    ))),
            Padding(
                padding: EdgeInsets.all(16.0),
                child: TextButton(
                    child: Text('按钮'),
                    onPressed: () => navigatorPush(context, ButtonPage()),
                    style: ButtonStyle(
                      textStyle:
                          MaterialStateProperty.all(TextStyle(fontSize: 20)),
                    ))),
            Padding(
                padding: EdgeInsets.all(16.0),
                child: TextButton(
                    child: Text('图片'),
                    onPressed: () => navigatorPush(context, ImagePage()),
                    style: ButtonStyle(
                      textStyle:
                          MaterialStateProperty.all(TextStyle(fontSize: 20)),
                    ))),
            Padding(
                padding: EdgeInsets.all(16.0),
                child: TextButton(
                    child: Text('选择控件'),
                    onPressed: () => navigatorPush(context, SwitchPage()),
                    style: ButtonStyle(
                      textStyle:
                          MaterialStateProperty.all(TextStyle(fontSize: 20)),
                    ))),
            Padding(
                padding: EdgeInsets.all(16.0),
                child: TextButton(
                    child: Text('输入框'),
                    onPressed: () => navigatorPush(context, TextFieldPage()),
                    style: ButtonStyle(
                      textStyle:
                          MaterialStateProperty.all(TextStyle(fontSize: 20)),
                    ))),
          ],
        ),
      ),
    );
  }
}
