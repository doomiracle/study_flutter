import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '/sample/widget/basic/ButtonSample.dart';

/// 依赖注入
class GetDiPage extends StatelessWidget {
  /// 定义一个对象，默认是空
  AuthorInfo? info1;

  /// 定义一个对象，默认是空
  AuthorInfo? info2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("GetX 示例"),
        ),
        body: Container(
          padding: EdgeInsets.all(20.0),
          child: Wrap(
            spacing: 16.0,
            runSpacing: 16.0,
            children: [
              ElevatedButton1(
                data: "创建实例",
                onPressed: () => _put1(),
              ),
              ElevatedButton1(
                data: "获取实例",
                onPressed: () => _find1(),
              ),
              ElevatedButton1(
                data: "打印实例数据",
                onPressed: () => _print1(),
              ),
            ],
          ),
        ));
  }

  /// 创建实例
  void _put1() {
    /// 通过 put 方法初始化一些控制器，尽量保证这个代码只执行一遍
    Get.put(AuthorInfo());
  }

  /// 创建实例
  void _find1() {
    info1 = Get.find<AuthorInfo>();
  }

  /// 打印测试
  void _print1() {
    if (info1 == null) {
      print("info1 is null");
    } else {
      print(
          "name = ${info1?.name} , age = ${info1?.age} , phoneNumber =  ${info1?.phoneNumber}");
    }
    if (info2 == null) {
      print("info2 is null");
    } else {
      print(
          "name = ${info2?.name} , age = ${info2?.age} , phoneNumber =  ${info2?.phoneNumber}");
    }
  }
}

/// 作者信息
class AuthorInfo {
  /// 构造
  AuthorInfo(
      {this.name = "lz", this.age = 26, this.phoneNumber = "17612345678"});

  /// 作者名字
  String name;

  /// 作者年龄
  int age;

  /// skuCode
  String phoneNumber;
}
