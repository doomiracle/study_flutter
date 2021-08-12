import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
                DateTime? result = await _showDatePicker1(context);
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
                DateTime? result = await _showDatePicker2(context);
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

/// AlertDialog
/// 警告提示框
/// 常用属性：
///       title 标题
///       content 内容
///       actions 按钮
class AlertDialog1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("提示"),
      content: Text("您确定要执行当前操作吗?"),
      actions: <Widget>[
        TextButton(
          child: Text("取消"),
          onPressed: () => Navigator.of(context).pop(),
        ),
        TextButton(
          child: Text("确认"),
          onPressed: () {
            Navigator.of(context).pop(true);
          },
        ),
      ],
    );
  }
}

/// SimpleDialog
/// 单选列表框
/// 常用属性：
///       title 标题
///       children  子控件集合
class SimpleDialog1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      title: const Text("请选择语言"),
      children: [
        SimpleDialogOption(
          onPressed: () {
            // 返回1
            Navigator.pop(context, 0);
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 6),
            child: const Text('中文简体'),
          ),
        ),
        SimpleDialogOption(
          onPressed: () {
            // 返回2
            Navigator.pop(context, 1);
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 6),
            child: const Text('美国英语'),
          ),
        ),
      ],
    );
  }
}

/// Dialog
/// 能使用延迟加载子组件，（如ListView、GridView 、 CustomScrollView等）
class Dialog1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Column(
        children: <Widget>[
          ListTile(title: Text("请选择")),
          Expanded(
              child: ListView.builder(
            itemCount: 30,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: Text("$index"),
                onTap: () => Navigator.of(context).pop(index),
              );
            },
          )),
        ],
      ),
    );
  }
}

/// 自定义弹出Dialog方法
/// 对 showGeneralDialog 方法进一步封装，达到自定义的效果；showDialog 本质也是对 showGeneralDialog 的封装
/// showGeneralDialog方法参数：
///         context 上下文
///         pageBuilder 构建对话框内部UI
///         barrierDismissible  点击遮罩是否关闭对话框
///         barrierLabel  语义化标签(用于读屏软件)
///         barrierColor  遮罩颜色
///         transitionDuration  对话框打开/关闭的动画时长
///         transitionBuilder 对话框打开/关闭的动画
Future<T?> showCustomDialog<T>({
  required BuildContext context,
  required WidgetBuilder builder,
  bool barrierDismissible = true,
}) {
  final ThemeData? theme = Theme.of(context);
  return showGeneralDialog(
    context: context,
    pageBuilder: (BuildContext buildContext, Animation<double> animation,
        Animation<double> secondaryAnimation) {
      final Widget pageChild = Builder(builder: builder);
      return SafeArea(
        child: Builder(builder: (BuildContext context) {
          return theme != null
              ? Theme(data: theme, child: pageChild)
              : pageChild;
        }),
      );
    },
    barrierDismissible: barrierDismissible,
    barrierLabel: MaterialLocalizations.of(context).modalBarrierDismissLabel,
    barrierColor: Colors.black87,
    transitionDuration: const Duration(milliseconds: 150),
    transitionBuilder: _buildMaterialDialogTransitions,
  );
}

/// 创建一个动画
Widget _buildMaterialDialogTransitions(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child) {
  // 使用缩放动画
  return ScaleTransition(
    scale: CurvedAnimation(
      parent: animation,
      curve: Curves.easeOut,
    ),
    child: child,
  );
}

/// Loading弹窗
showLoadingDialog(BuildContext context) {
  showDialog(
    context: context,
    barrierDismissible: false, //点击遮罩不关闭对话框
    builder: (context) {
      return AlertDialog(
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            CircularProgressIndicator(),
            Padding(
              padding: const EdgeInsets.only(top: 26.0),
              child: Text("正在加载，请稍后..."),
            )
          ],
        ),
      );
    },
  );
}

/// 日历弹窗
Future<DateTime?> _showDatePicker1(BuildContext context) {
  var date = DateTime.now();
  return showDatePicker(
    context: context,
    initialDate: date,
    firstDate: date,
    lastDate: date.add(
      //未来30天可选
      Duration(days: 30),
    ),
  );
}

/// IOS风格弹窗
Future<DateTime?> _showDatePicker2(BuildContext context) {
  var date = DateTime.now();
  return showCupertinoModalPopup(
    context: context,
    builder: (ctx) {
      return SizedBox(
        height: 200,
        child: Container(
          color: Colors.white,
          child: CupertinoDatePicker(
            mode: CupertinoDatePickerMode.dateAndTime,
            minimumDate: date,
            maximumDate: date.add(
              Duration(days: 30),
            ),
            maximumYear: date.year + 1,
            onDateTimeChanged: (DateTime value) {
              print(value);
            },
          ),
        ),
      );
    },
  );
}
