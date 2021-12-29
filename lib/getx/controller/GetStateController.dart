import 'package:get/get.dart';

/// 控制器
/// 可以理解为ViewModel
class GetStateController extends GetxController {
  /// 定一个 to 字段，可以随时获取 Controller 实例
  /// 实例需要创建!!!
  static GetStateController get to => Get.find();

  /// 定义一个int类型的数量
  var count1 = 0;

  /// 定义一个可观察的int值
  var count2 = 0.obs;

  /// 定义一个可观察的int值
  final count3 = RxInt(0);

  /// 增加 count1 的数量
  increment1() {
    count1++;
    // 主动的更新数据，会触发 GetBuilder
    // update();
    // 主动的更新数据，只会触发固定id组的 GetBuilder
    update(['firstCount']);
  }

  /// 增加 count2 的数量
  increment2() => count2++;

  /// 增加 count3 的数量
  increment3() => count3.value++;

  @override
  void onInit() {
    super.onInit();
    print("onInit...");
  }

  @override
  void onClose() {
    super.onClose();
    print("onClose...");
  }
}
