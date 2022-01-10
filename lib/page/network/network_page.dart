import 'package:flutter/material.dart';
import 'package:study_flutter/page/network/httpclient/http_client_view.dart';
import 'package:study_flutter/page/network/json/json_view.dart';

import 'dio/dio_view.dart';

/// HTTP操作
/// http://pcs-api.wt.cainiao.com/api/pdaVersion/check?session=24956798&warehouseId=10030001
class NetworkPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _NetworkPageState();
  }
}

class _NetworkPageState extends State<NetworkPage> {

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
            Wrap(
              spacing: 8.0,
              runSpacing: 4.0,
              children: [
                ElevatedButton(
                  onPressed: ()  => _navigatorPush(context, HttpClientPage()),
                  child: Text("HttpClient"),
                ),
                ElevatedButton(
                  onPressed: ()  => _navigatorPush(context, JsonPage()),
                  child: Text("Json"),
                ),
                ElevatedButton(
                  onPressed: () => _navigatorPush(context, DioPage()),
                  child: Text('Dio'),
                ),
              ],
            ),
            Text(_result ?? ""),
          ],
        ),
      ),
    );
  }

  /// 导航到一个新界面
  void _navigatorPush(BuildContext context, Widget widget) {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return widget;
    }));
  }
}
