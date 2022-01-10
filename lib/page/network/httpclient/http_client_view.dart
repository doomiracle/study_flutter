import 'dart:convert';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// HttpClient示例
/// Dart自带的io库
class HttpClientPage extends StatelessWidget {

  // 是否正在请求
  bool _loading = false;

  // 请求的结果
  String? _result;

  Uri uri = Uri(
      scheme: "http",
      host: "pcs-api.wt.cainiao.com",
      path: "api/pdaVersion/check",
      queryParameters: {"session": "24956798", "warehouseId": "10030001"});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HttpClient示例"),
      ),
      body: Container(
        padding: EdgeInsets.all(8.0),
        child: Wrap(
          children: [
            ElevatedButton(
              onPressed: () => _httpClient1(),
              child: Text('Get请求'),
            ),
          ],
        ),
      ),
    );
  }

  /// 不支持web端
  Future<String> _httpClient1() async {
    String responseContent = "";
    try {
      // 创建一个HttpClient
      HttpClient httpClient = new HttpClient();
      // 打开Http连接
      HttpClientRequest request = await httpClient.getUrl(uri);
      // 等待连接服务器（会将请求信息发送给服务器）
      HttpClientResponse response = await request.close();
      // 读取响应内容
      responseContent = await response.transform(utf8.decoder).join();
      // 关闭client后，通过该client发起的所有请求都会中止。
      httpClient.close();
    } catch (e) {
      responseContent = e.toString();
    }
    return responseContent;
  }

}
