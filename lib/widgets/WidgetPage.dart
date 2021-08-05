import 'package:flutter/material.dart';
import 'package:study_flutter/widgets/base/ButtonPage.dart';
import 'package:study_flutter/widgets/base/ImagePage.dart';
import 'package:study_flutter/widgets/base/ProgressPage.dart';
import 'package:study_flutter/widgets/base/SwitchPage.dart';
import 'package:study_flutter/widgets/base/TextFieldPage.dart';
import 'package:study_flutter/widgets/multi/LinearLayoutPage.dart';

import 'base/TextPage.dart';
import 'multi/WrapPage.dart';

/// Widget
class WidgetPage extends StatelessWidget {

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
        title: Text("Widget"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              'Basic Widget',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.0, right: 10.0),
            child: Wrap(
              spacing: 8.0,
              children: [
                ElevatedButton(
                  onPressed: () => _navigatorPush(context, TextPage()),
                  child:
                  Text("文本"),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.blue),
                  ),
                ),
                ElevatedButton(
                  onPressed: () => _navigatorPush(context, ButtonPage()),
                  child:
                  Text("按钮"),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.blue),
                  ),
                ),
                ElevatedButton(
                  onPressed: () => _navigatorPush(context, ImagePage()),
                  child:
                  Text("图片"),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.blue),
                  ),
                ),
                ElevatedButton(
                  onPressed: () => _navigatorPush(context, TextFieldPage()),
                  child:
                  Text("输入框"),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.blue),
                  ),
                ),
                ElevatedButton(
                  onPressed: () => _navigatorPush(context, SwitchPage()),
                  child:
                  Text("开关控件"),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.blue),
                  ),
                ),
                ElevatedButton(
                  onPressed: () => _navigatorPush(context, ProgressPage()),
                  child:
                  Text("进度指示器"),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.blue),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              'MultiChild Widget',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.0, right: 10.0),
            child: Wrap(
              spacing: 8.0,
              children: [
                ElevatedButton(
                  onPressed: () => _navigatorPush(context, LinearLayoutPage()),
                  child:
                  Text("线性布局"),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.blue),
                  ),
                ),
                ElevatedButton(
                  onPressed: () => _navigatorPush(context, WrapPage()),
                  child:
                  Text("流式布局"),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.blue),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
