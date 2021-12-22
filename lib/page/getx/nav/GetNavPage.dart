import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:study_flutter/routes/getx/GetRoutes.dart';

import '/sample/widget/basic/ButtonSample.dart';
import 'GetNavPageTwo.dart';

/// 路由管理
/// Get框架提供了及其简单的路由管理API，去除了Context的限制
/// PS：使用路由管理，必须将 MaterialApp 替换为 GetMaterialApp !!!!
class GetNavPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("路由管理"),
        ),
        body: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 16),
                child: Text(
                  "界面1",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
              Wrap(
                spacing: 16.0,
                runSpacing: 16.0,
                children: <Widget>[
                  ElevatedButton1(
                    data: "返回",
                    // 通过 Get 的 back() 方法可以弹出当前界面
                    onPressed: () => back1(),
                  ),
                  ElevatedButton1(
                    data: "新的页面",
                    onPressed: () => _to1(),
                  ),
                  ElevatedButton1(
                    data: "新的页面(名称)",
                    onPressed: () => _toNamed1(),
                  ),
                  ElevatedButton1(
                    data: "新的页面(名称),传参",
                    onPressed: () => _toNamed2(),
                  ),
                  ElevatedButton1(
                    data: "新的页面,删除当前",
                    onPressed: () => _of1(),
                  ),
                  ElevatedButton1(
                    data: "新的页面(名称),删除当前",
                    onPressed: () => _offNamed1(),
                  ),
                  ElevatedButton1(
                    data: "新的页面,删除所有",
                    onPressed: () => _offAll1(),
                  ),
                  ElevatedButton1(
                    data: "新的页面(名称),删除所有",
                    onPressed: () => _offAllNamed1(),
                  ),
                ],
              ),
            ],
          ),
        ));
  }

  /// 返回
  static void back1() {
    Get.back();
  }

  /// 打开到新的页面
  /// 当前界面进栈
  /// 建议都通过名称!!!
  void _to1() {
    Get.to(GetNavPageTwo());
  }

  /// 打开到新的页面
  /// 当前界面进栈
  Future<void> _to2() async {
    var data = await Get.to(GetNavPageTwo());
  }

  /// 通过名称 打开到新的页面
  /// 名称需要提前配置
  /// 当前界面进栈
  void _toNamed1() {
    Get.toNamed(GetRoutes.NAV2);
  }

  /// 通过名称 打开到新的页面
  /// 名称需要提前配置
  /// 当前界面进栈
  /// 增加参数的传递
  void _toNamed2() {
    Get.toNamed(GetRoutes.NAV2, arguments: 'from page1');
  }

  /// 打开新的页面,删除当前页面
  /// 建议都通过名称!!!
  void _of1() {
    Get.off(GetNavPageTwo());
  }

  /// 通过名称 打开新的页面,删除当前页面
  /// 名称需要提前配置
  void _offNamed1() {
    Get.offNamed(GetRoutes.NAV2);
  }

  /// 打开新的页面,删除所有页面
  /// 建议都通过名称!!!
  void _offAll1() {
    Get.offAll(GetNavPageTwo());
  }

  /// 通过名称 打开新的页面,删除当前页面
  void _offAllNamed1() {
    Get.offAllNamed(GetRoutes.NAV2);
  }
}
