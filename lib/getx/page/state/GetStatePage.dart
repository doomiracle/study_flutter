import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:study_flutter/getx/controller/GetStateController.dart';

/// 状态管理
/// 这里用官方的计数器示例来展示GetX如何进行路由管理
/// 1. 创建Controller(类似ViewModel，逻辑部分)
/// 2. 获取Controller实例
/// 3. 通过Obx函数最小化创建widget
class GetStatePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    /// 定义一个controller，通过依赖注入获取Controller的实例
    final controller = Get.put(GetStateController());

    return Scaffold(
      appBar: AppBar(
        title: Text("状态管理"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 200,
            width: 200,
            color: Colors.red,
            alignment: Alignment.center,
            // 通过Obx函数，当可观察对象发生改变时，最小化构建界面widget
            child: Obx(() => Text(
                  controller.count.toString(),
                  style: TextStyle(
                    fontSize: 50,
                    color: Colors.white,
                  ),
                )),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        //悬浮按钮
        child: Icon(Icons.add),
        onPressed: () => controller.increment(),
      ),
    );
  }
}
