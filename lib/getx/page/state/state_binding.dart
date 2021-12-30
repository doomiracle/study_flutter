import 'package:get/get.dart';
import 'package:study_flutter/getx/page/state/state_controller.dart';

/// 状态绑定
/// 通过 Bindings 来控制 Controller 的生命周期
class GetStateBinding extends Bindings {
  @override
  void dependencies() {
    print("dependencies...");
    // 创建 Controller 实例
    Get.put(GetStateController());
  }
}
