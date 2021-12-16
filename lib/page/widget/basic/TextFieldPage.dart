import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// 文本输入框
class TextFieldPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TextFieldPageState();
  }
}

class _TextFieldPageState extends State<TextFieldPage> {
  // 控制器
  TextEditingController controller1 = new TextEditingController();

  // 焦点
  FocusNode focusNode1 = new FocusNode();

  /// 打印输入框文字
  _printText() {
    print(controller1.text);
  }

  /// 设置全选
  _selectionAll() {
    // 选中并不能拉到焦点
    controller1.selection =
        TextSelection(baseOffset: 0, extentOffset: controller1.text.length);
  }

  /// 获取焦点
  _setGetFocus() {
    FocusScope.of(context).requestFocus(focusNode1);
  }

  @override
  void initState() {
    super.initState();
    // 文字改变监听
    controller1.addListener(() {
      print("文字改变监听：" + controller1.text);
    });
    // 焦点改变监听
    focusNode1.addListener(() {
      print("焦点改变，当前是否有焦点：" + focusNode1.hasFocus.toString());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("输入框示例"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
              padding: EdgeInsets.all(5.0),
              child: TextField1(controller1, focusNode1)),
          Padding(padding: EdgeInsets.all(5.0), child: TextField1(null, null)),
          Padding(
              padding: EdgeInsets.all(5.0),
              child: ElevatedButton(
                onPressed: () {
                  _printText();
                  _setGetFocus();
                  // _selectionAll();
                },
                child: Text("事件触发"),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blue),
                ),
              )),
        ],
      ),
    );
  }
}

/// 文本输入框
/// 常用属性：
///       controller  编辑框的控制器
///       autofocus 是否自动获取焦点
///       obscureText 是否隐藏正在编辑的文本，如用于输入密码的场景等，文本内容会用“•”替换
///       keyboardType  输入类型；TextInputType.text
///       textInputAction 软键盘回车按钮图标；TextInputAction.done
///       textAlign 文字输入位置；TextAlign.left
///       maxLines  输入框的最大行数，默认为1；如果为null，则无行数限制
///       maxLength 允许输入内容大小
///       maxLengthEnforcement  允许输入内容超过限制后策略；与maxLength搭配使用；MaxLengthEnforcement.enforced
///       enabled 是否可以编辑
///       cursorColor 光标颜色；默认主题色
///       focusNode 焦点
///       onChanged 内容改变监听
///       decoration  描述；InputDecoration  用来控制外观显示，如提示文本、背景颜色、边框等
///                                   labelText 标题文字
///                                   hintText  提示文字内容
///                                   prefixIcon  前缀图标
///                                   enabledBorder 没焦点时的边框
///                                   focusedBorder 有焦点时的边框
class TextField1 extends StatelessWidget {
  // 控制器
  TextEditingController? _controller;
  FocusNode? _focusNode;

  TextField1(TextEditingController? controller, FocusNode? focusNode) {
    _controller = controller;
    _focusNode = focusNode;
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _controller,
      autofocus: true,
      obscureText: false,
      keyboardType: TextInputType.text,
      textInputAction: TextInputAction.done,
      textAlign: TextAlign.left,
      maxLines: 1,
      maxLength: 20,
      maxLengthEnforcement: MaxLengthEnforcement.none,
      enabled: true,
      cursorColor: Colors.blue,
      focusNode: _focusNode,
      onChanged: (text) {
        print("onChange: $text");
      },
      decoration: InputDecoration(
        hintText: "请输入内容",
        prefixIcon: Icon(Icons.person),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.blue),
        ),
      ),
    );
  }
}
