import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:study_flutter/sample/widget/basic/ButtonSample.dart';

/// Snackbars
class GetSnackbarsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Snackbars示例"),
        ),
        body: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Wrap(
                spacing: 16.0,
                runSpacing: 16.0,
                children: <Widget>[
                  ElevatedButton1(
                    data: "Snackbars(默认)",
                    onPressed: () => _snackbar1(),
                  ),
                  ElevatedButton1(
                    data: "改变时长",
                    onPressed: () => _snackbar2(),
                  ),
                  ElevatedButton1(
                    data: "改变位置",
                    onPressed: () => _snackbar3(),
                  ),
                  ElevatedButton1(
                    data: "自定义标题内容样式",
                    onPressed: () => _snackbar4(),
                  ),
                  ElevatedButton1(
                    data: "图标",
                    onPressed: () => _snackbar5(),
                  ),
                  ElevatedButton1(
                    data: "边框",
                    onPressed: () => _snackbar6(),
                  ),
                ],
              ),
            ],
          ),
        ));
  }

  /// 弹出一个Snackbar
  /// 必填参数
  /// 参数一：标题
  /// 参数二：内容
  void _snackbar1() {
    Get.snackbar('网络错误', '请检查网络连接!');
  }

  /// duration  显示的时间
  ///       Duration
  ///           seconds 秒
  ///           milliseconds  毫秒
  void _snackbar2() {
    Get.snackbar(
      '网络错误',
      '请检查网络连接!',
      duration: Duration(seconds: 5),
    );
  }

  /// snackPosition  显示的位置；默认SnackPosition.TOP
  ///         SnackPosition.BOTTOM  下方
  void _snackbar3() {
    Get.snackbar(
      '网络错误',
      '请检查网络连接!',
      snackPosition: SnackPosition.BOTTOM,
    );
  }

  /// titleText  自定义标题；会覆盖原有的 title；这里是一个Widget,可以返回自己的组件和样式
  /// messageText   自定义内容；会覆盖原有的 message；这里是一个Widget,可以返回自己的组件和样式
  void _snackbar4() {
    Get.snackbar(
      '网络错误',
      '请检查网络连接!',
      titleText: Text(
        "自定义标题样式",
        style: TextStyle(color: Colors.red),
      ),
      messageText: Text(
        '自定义内容样式',
        style: TextStyle(color: Colors.amberAccent),
      ),
    );
  }

  /// icon  增加图标
  /// margin  外边距
  /// padding  内边距
  void _snackbar5() {
    Get.snackbar(
      '网络错误',
      '请检查网络连接!',
      // 图标
      icon: Icon(
        Icons.network_check,
        color: Colors.white,
        size: 35,
      ),
      // 外边距
      margin: EdgeInsets.all(18),
      // 内边距
      padding: EdgeInsets.all(18),
    );
  }

  /// borderWidth  边框宽度
  /// borderColor  边框颜色
  /// borderRadius  边框圆角
  void _snackbar6() {
    Get.snackbar(
      '网络错误',
      '请检查网络连接!',
      // 边框宽度
      borderWidth: 2.0,
      // 边框颜色
      borderColor: Colors.red,
      // 边框圆角
      borderRadius: 50,
    );
  }
}
