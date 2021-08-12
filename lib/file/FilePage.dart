import 'dart:io';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

class FilePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FilePageState();
  }
}

/// 文件操作
/// 这里引入 path_provider 库，用于在文件系统上查找常用位置。支持 iOS、Android、Linux 和 MacOS。并非所有平台都支持所有方法。
/// 可以使用 getTemporaryDirectory() 获取cache目录；getApplicationDocumentsDirectory() 获取File目录；getExternalStorageDirectory() 获取外部存储
///
class _FilePageState extends State<FilePage> {
  // 从文件中读取的内容
  String _fileStr = "";

  // 控制器
  TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    // 从文件中读取数据
    _fileToString().then((String value) {
      setState(() {
        _fileStr = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("文件操作展示"),
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: _controller,
              autofocus: true,
              decoration: InputDecoration(
                hintText: "请输入需要存储的数据",
              ),
            ),
            ElevatedButton(onPressed: () async {

              await _stringToFile(_controller.text);
              setState(() {
                _controller.text = "";
                print("存储成功");
              });
            }, child: Text("存储数据")),
            Text("从文件中读取的数据：$_fileStr"),
          ],
        ),
      ),
    );
  }

  /// 获取本地文件
  Future<File> _getLocalFile() async {
    // 获取应用目录
    String dir = (await getApplicationDocumentsDirectory()).path;
    return File('$dir/fileDemo.txt');
  }

  /// 读取文件内容
  Future<String> _fileToString() async {
    try {
      File file = await _getLocalFile();
      // 读取字符串
      String contents = await file.readAsString();
      return contents;
    } on FileSystemException {
      return "";
    }
  }

  /// 将文字内容写入文件
  Future<Null> _stringToFile(String content) async {
    await (await _getLocalFile()).writeAsString(content);
  }


}
