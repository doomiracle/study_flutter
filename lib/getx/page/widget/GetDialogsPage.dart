import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:study_flutter/sample/widget/basic/ButtonSample.dart';

/// Snackbars
class GetDialogsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Dialogs示例"),
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
                    data: "Dialog",
                    onPressed: () => _defaultDialog1(),
                  ),
                  ElevatedButton1(
                    data: "自定义按钮",
                    onPressed: () => _defaultDialog2(),
                  ),
                ],
              ),
            ],
          ),
        ));
  }

  /// 默认Dialog
  /// title 标题
  /// titleStyle  标题样式
  /// content  内容
  /// barrierDismissible  点击其它地方是否允许退出
  void _defaultDialog1() {
    Get.defaultDialog(
      title: '标题',
      titleStyle: TextStyle(
        color: Colors.black,
      ),
      // 内容
      content: Column(
        children: [
          Text('这里是模拟的数据'),
          Text('这里是模拟的数据'),
          Text('这里是模拟的数据'),
          Text('这里是模拟的数据'),
          Text('这里是模拟的数据'),
        ],
      ),
      // 取消按钮
      textCancel: '取消',
      // 取消按钮颜色
      cancelTextColor: Colors.greenAccent,
      // 取消按钮事件
      onCancel: () {
        print("取消...");
      },
      // 确认按钮
      textConfirm: '确认',
      // 确认按钮颜色
      confirmTextColor: Colors.white,
      // 确认按钮事件
      onConfirm: () {
        print("确认...");
        // 弹出Dialog
        Get.back();
      },
      // 底部按钮背景
      buttonColor: Colors.greenAccent,
      // 点击其它地方是否允许退出
      barrierDismissible: false,
    );
  }

  void _defaultDialog2() {
    Get.defaultDialog(
      title: '标题',
      titleStyle: TextStyle(
        color: Colors.black,
      ),
      // 内容
      content: Column(
        children: [
          Text('这里是模拟的数据'),
          Text('这里是模拟的数据'),
          Text('这里是模拟的数据'),
          Text('这里是模拟的数据'),
          Text('这里是模拟的数据'),
        ],
      ),
      cancel: ElevatedButton(
        onPressed: () {
          print("取消...");
          // 弹出Dialog
          Get.back();
        },
        style: ButtonStyle(
          // 背景色
          backgroundColor: MaterialStateProperty.all(Colors.blue),
        ),
        child: Text(
          '取消',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      confirm: ElevatedButton(
        onPressed: () {
          print("确认...");
          // 弹出Dialog
          Get.back();
        },
        style: ButtonStyle(
          // 背景色
          backgroundColor: MaterialStateProperty.all(Colors.green),
        ),
        child: Text(
          '确认',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
