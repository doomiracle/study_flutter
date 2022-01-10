import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

import 'dio_controller.dart';

/// Dio
/// 最常见的请求框架，实际项目中尽量保持Dio单例
class DioPage extends StatefulWidget {
  const DioPage({Key? key}) : super(key: key);

  @override
  _DioPageState createState() => _DioPageState();
}

class _DioPageState extends State<DioPage> {
  // 请求的结果
  String? _result;

  // DioController
  DioController _controller = DioController();

  @override
  void initState() {
    super.initState();
    // 初始化Dio
    _controller.initDio();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dio"),
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Wrap(
              spacing: 8.0,
              runSpacing: 4.0,
              children: [
                ElevatedButton(
                  onPressed: () => _getTest(),
                  child: Text("Get请求"),
                ),
                ElevatedButton(
                  onPressed: () => _postTest(),
                  child: Text("Post请求"),
                ),
              ],
            ),
            Expanded(
              child: Container(
                child: SingleChildScrollView(
                  child: Text(_result ?? ""),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// get请求
  void _getTest() async {
    String result = await _controller.get1();
    _setResult(result);
    // print("result = " + result);
  }

  /// post请求
  void _postTest() async {
    String result = await _controller.post1();
    _setResult(result);
    // print("result = " + result);
  }

  void _setResult(String content) {
    setState(() {
      _result = content;
    });
  }
}
