import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:study_flutter/getx/controller/GetStateController.dart';

import '/sample/widget/basic/ButtonSample.dart';
import '../routes/GetRoutes.dart';

/// GetX 示例界面
/// 1. 路由管理
/// 2. 状态管理
/// 3. 依赖注入
class GetXPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    _initController();
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
                data: "路由管理",
                onPressed: () => Get.toNamed(GetRoutes.NAV),
              ),
              ElevatedButton1(
                data: "内置组件",
                onPressed: () => Get.toNamed(GetRoutes.WIDGET),
              ),
              ElevatedButton1(
                data: "状态管理",
                onPressed: () => Get.toNamed(GetRoutes.STATE),
              ),
              ElevatedButton1(
                data: "依赖注入",
                onPressed: () => Get.toNamed(GetRoutes.DI),
              ),
              ElevatedButton1(
                data: "国际化",
                onPressed: () => {},
              ),
            ],
          ),
        ));
  }

  /// 初始化一些控制器
  void _initController() {
    /// 通过 put 方法初始化一些控制器，尽量保证这个代码只执行一遍
    Get.lazyPut<GetStateController>(() => GetStateController());
  }
}
