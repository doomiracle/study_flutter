import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:study_flutter/getx/page/state/state_controller.dart';
import 'package:study_flutter/sample/widget/basic/ButtonSample.dart';

/// 状态管理
/// 这里用官方的计数器示例来展示GetX如何进行路由管理
/// 1. 创建Controller(类似ViewModel，逻辑部分)
/// 2. 获取Controller实例
/// 3. 通过Obx函数最小化创建widget
///
/// 两种状态管理器：
/// GetBuilder  简单的状态管理器；这种状态管理器需要手动的触发更新，才会重新构建
/// GetX        响应式状态管理器；这种状态管理器类似于流的方式，会自动构建
class GetStatePage extends GetView<GetStateController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("状态管理"),
      ),
      body: Container(
        padding: EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 通过 GetBuilder 创建一个简单的 Controller，需要手动调用 update 方法，才会重新构建
            GetBuilder<GetStateController>(
                init: GetStateController(),
                // 这里可以加一个id，在update的时候，必须定向触发构建
                id: "firstCount",
                builder: (controller) => Text(
                      controller.count1.toString(),
                      style: TextStyle(
                        fontSize: 50,
                        color: Colors.black,
                      ),
                    )),
            // 通过 Obx 方式构建一个 Text，当数据改变时，会触发重新构建
            Obx(() => Text(
                  GetStateController.to.count2.toString(),
                  style: TextStyle(
                    fontSize: 50,
                    color: Colors.black,
                  ),
                )),
            // 通过GetX的方式获取一个Controller实例，并创建Text
            GetX<GetStateController>(
              builder: (data) {
                return Text(
                  data.count3.toString(),
                  style: TextStyle(
                    fontSize: 50,
                    color: Colors.black,
                  ),
                );
              },
            ),
            Wrap(
              spacing: 12.0,
              runSpacing: 12.0,
              children: [
                ElevatedButton1(
                  data: "增加第一个数",
                  onPressed: () => controller.increment1(),
                ),
                ElevatedButton1(
                  data: "增加第二个数",
                  onPressed: () => controller.increment2(),
                ),
                ElevatedButton1(
                  data: "增加第三个数",
                  onPressed: () => controller.increment3(),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        //悬浮按钮
        child: Icon(Icons.add),
        onPressed: () => GetStateController.to.increment1(),
      ),
    );
  }
}
