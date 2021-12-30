import 'package:get/get.dart';
import 'package:study_flutter/getx/page/state/state_controller.dart';

/// 自动注册
class GetStateBinding extends Bindings {
  @override
  void dependencies() {
    // 
    Get.put(GetStateController());
  }
}
