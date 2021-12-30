import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:study_flutter/getx/routes/app_pages.dart';
import 'package:study_flutter/sample/widget/basic/ButtonSample.dart';

/// GetX 示例界面
/// 1. 路由管理
/// 2. 状态管理
/// 3. 依赖注入
class GetXPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("GetX 示例"),
        ),
        body: Container(
          padding: EdgeInsets.all(12.0),
          child: Wrap(
            spacing: 12.0,
            runSpacing: 12.0,
            children: [
              ElevatedButton1(
                data: "路由管理",
                onPressed: () => Get.toNamed(Routes.NAV),
              ),
              ElevatedButton1(
                data: "内置组件",
                onPressed: () => Get.toNamed(Routes.WIDGET),
              ),
              ElevatedButton1(
                data: "状态管理",
                onPressed: () => Get.toNamed(Routes.STATE),
              ),
              ElevatedButton1(
                data: "依赖注入",
                onPressed: () => Get.toNamed(Routes.DI),
              ),
              ElevatedButton1(
                data: "国际化",
                onPressed: () => Get.toNamed(Routes.LOCAL),
              ),
            ],
          ),
        ));
  }
}
