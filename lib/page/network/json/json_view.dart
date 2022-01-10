import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:study_flutter/page/network/json/bean/pcs_result.dart';
import 'package:study_flutter/page/network/json/bean/version_info.dart';

/// Json 示例
class JsonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Json示例"),
      ),
      body: Container(
        padding: EdgeInsets.all(8.0),
        child: Wrap(
          spacing: 8.0,
          runSpacing: 4.0,
          children: [
            ElevatedButton(
              onPressed: () => _jsonDecode1(),
              child: Text('json转对象'),
            ),
            ElevatedButton(
              onPressed: () => _jsonDecode2(),
              child: Text('json转泛型对象'),
            ),
          ],
        ),
      ),
    );
  }

  /// json数据转为对象
  _jsonDecode1() {
    String jsonStr =
        '{"warehouseId":"10026001","version":"2.11.46","url":"http://mupppub.cn-hangzhou.oss.aliyun-inc.com/15352455/app/build/outputs/apk/release/201200%40pcs_android_2.11.46-release.apk","info":"质量稽查功能优化","force":false}';
    // 将JSON字符串转为对象
    VersionInfo info = VersionInfo.fromJson(json.decode(jsonStr));
    print("jsonDecode1...${info.info}");
  }

  /// json数据转为带泛型对象
  _jsonDecode2() {
    String jsonStr =
        '{"success": 1,"msg": "获取版本信息成功","data":{"warehouseId":"10026001","version":"2.11.46","url":"http://mupppub.cn-hangzhou.oss.aliyun-inc.com/15352455/app/build/outputs/apk/release/201200%40pcs_android_2.11.46-release.apk","info":"质量稽查功能优化","force":false}}';
    // 将JSON字符串转为泛型对象
    PcsResult<VersionInfo> result = PcsResult.fromJson(
        json.decode(jsonStr), (json) => VersionInfo.fromJson(json));
    print("jsonDecode2...${result.data?.version}");
  }
}
