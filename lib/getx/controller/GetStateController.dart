import 'package:get/get.dart';

/// 控制器
/// 可以理解为ViewModel
class GetStateController extends GetxController {

  /// 定义一个可观察的int值
  var count = 0.obs;

  /// 增加
  increment() => count++;

}
