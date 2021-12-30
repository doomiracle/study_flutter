import 'package:get/get.dart';

/// 控制器
class GetNavController extends GetxController {

  /// 定一个 to 字段，可以随时获取 Controller 实例
  /// 实例需要创建!!!
  static GetNavController get to => Get.find();

  // 定义一个可观察的对象
  var count = 0.obs;

  /// 增加数量
  void addCount() => count++;
}
