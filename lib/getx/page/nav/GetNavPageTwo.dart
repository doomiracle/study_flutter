import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:study_flutter/getx/page/nav/nav_controller.dart';
import 'package:study_flutter/getx/routes/app_pages.dart';
import 'package:study_flutter/sample/widget/basic/ButtonSample.dart';

/// GetX路由管理
/// 导航页面2
class GetNavPageTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = GetNavController.to;
    return Scaffold(
        appBar: AppBar(
          title: Text("路由管理2"),
        ),
        body: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 16),
                child: Text(
                  _arguments1(),
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 16),
                child: Obx(
                  () => Text(
                    controller.count.toString(),
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              Wrap(
                spacing: 16.0,
                runSpacing: 16.0,
                children: <Widget>[
                  ElevatedButton1(
                    data: "返回",
                    onPressed: () => Get.back(),
                  ),
                  ElevatedButton1(
                    data: "新的页面",
                    onPressed: () => Get.toNamed(Routes.NAV3),
                  ),
                  ElevatedButton1(
                    data: "新的页面,删除当前",
                    onPressed: () => Get.offNamed(Routes.NAV3),
                  ),
                  ElevatedButton1(
                    data: "增加数量",
                    onPressed: () => controller.addCount(),
                  ),
                ],
              ),
            ],
          ),
        ));
  }

  String _arguments1() {
    final argumentsByLast = Get.arguments;
    if (argumentsByLast != null) {
      var value = argumentsByLast["key1"];
      if (value != null) {
        return value;
      }
    }
    return "界面2";
  }
}
