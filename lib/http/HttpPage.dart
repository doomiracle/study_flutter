import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';

/// HTTP操作
/// http://pcs-api.wt.cainiao.com/api/pdaVersion/check?session=24956798&warehouseId=10030001
class HttpPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HttpPageState();
  }
}

class _HttpPageState extends State<HttpPage> {

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
        title: Text("网络请求示例"),
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ElevatedButton(
              onPressed: () async {
                String response = await _httpClient1();
                setState(() {
                  _result = response;
                });
              },
              child: Text("请求数据"),
            ),
            Text(_result ?? ""),
          ],
        ),
      ),
    );
  }

  Future<String> _httpClient1() async {
    // 创建一个HttpClient
    HttpClient httpClient = new HttpClient();
    // 打开Http连接
    HttpClientRequest request = await httpClient.getUrl(uri);
    // 等待连接服务器（会将请求信息发送给服务器）
    HttpClientResponse response = await request.close();
    // 读取响应内容
    String content = await response.transform(utf8.decoder).join();
    // 关闭client后，通过该client发起的所有请求都会中止。
    httpClient.close();
    return content;
  }
}
