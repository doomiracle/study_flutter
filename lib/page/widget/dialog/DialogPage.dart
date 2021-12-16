import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '/sample/widget/dialog/DialogSample.dart';

/// Dialog
/// 弹窗；通常一个对话框会包含标题、内容，以及一些操作按钮
/// *** 利用 showDialog 方法弹窗；
///     方法参数：
///         context 上下文
///         barrierDismissible  点其它地方Dialog是否消失；默认true
///         builder 弹窗UI
/// *** 利用 showGeneralDialog 方法自定弹窗动画
/// *** 利用 showModalBottomSheet 方法底部弹窗
/// *** 利用 showBottomSheet 方法底部全屏弹窗；返回的是一个controller
class DialogPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dialog示例"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () async {
                // 弹出对话框并等待其关闭
                bool? result1 = await showDialog(
                    context: context,
                    barrierDismissible: true,
                    builder: (BuildContext context) {
                      return AlertDialog1();
                    });
                if (result1 == null) {
                  print("取消");
                } else {
                  print("确认");
                }
              },
              child: Text("提示框"),
            ),
            ElevatedButton(
              onPressed: () async {
                int? result2 = await showDialog(
                    context: context,
                    barrierDismissible: true,
                    builder: (BuildContext context) {
                      return SimpleDialog1();
                    });
                if (result2 == null) {
                  print("啥都没选");
                } else {
                  print(result2.toString());
                }
              },
              child: Text("单选框"),
            ),
            ElevatedButton(
              onPressed: () async {
                int? result3 = await showDialog(
                    context: context,
                    barrierDismissible: true,
                    builder: (BuildContext context) {
                      return Dialog1();
                    });
                if (result3 == null) {
                  print("啥都没选");
                } else {
                  print(result3.toString());
                }
              },
              child: Text("ListView框"),
            ),
            ElevatedButton(
              onPressed: () async {
                // 弹出对话框并等待其关闭
                bool? result4 = await showCustomDialog(
                    context: context,
                    barrierDismissible: true,
                    builder: (BuildContext context) {
                      return AlertDialog1();
                    });
                if (result4 == null) {
                  print("取消");
                } else {
                  print("确认");
                }
              },
              child: Text("自定义动画弹窗"),
            ),
            ElevatedButton(
              onPressed: () async {
                int? result5 = await showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return ListView.builder(
                        itemCount: 30,
                        itemBuilder: (BuildContext context, int index) {
                          return ListTile(
                            title: Text("$index"),
                            onTap: () => Navigator.of(context).pop(index),
                          );
                        },
                      );
                    });
                if (result5 == null) {
                  print("啥都没选");
                } else {
                  print(result5.toString());
                }
              },
              child: Text("底部弹窗"),
            ),
            ElevatedButton(
              onPressed: () => showLoadingDialog(context),
              child: Text("显示Loading"),
            ),
            ElevatedButton(
              onPressed: () async {
                // 弹出对话框并等待其关闭
                DateTime? result = await showDatePicker1(context);
                if (result == null) {
                  print("啥都没选");
                } else {
                  print(result.toString());
                }
              },
              child: Text("日历弹窗"),
            ),
            ElevatedButton(
              onPressed: () async {
                // 弹出对话框并等待其关闭
                DateTime? result = await showDatePicker2(context);
                if (result == null) {
                  print("啥都没选");
                } else {
                  print(result.toString());
                }
              },
              child: Text("IOS风格日历弹窗"),
            ),
          ],
        ),
      ),
    );
  }
}