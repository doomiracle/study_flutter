import 'package:get/get.dart';

/// Controller示例
/// Controller作为业务逻辑以及数据存储的地方，本身可以直接是一个类，这里继承 GetxController 是为了方便依赖注入，也可以控制它的生命周期
class ControllerSample extends GetxController {
  /// 创建一个可观察的String类型数据
  final name = RxString('张三');

  /// 创建一个可观察的int类型数据
  final count = Rx<int>(0);

  /// 创建一个可观察的boolean类型数据
  /// 一般使用这种，更加简便
  final isLogged = false.obs;

  /// 通过value取出里面的值
  int get sum => count.value;

  /// 这个方法是在控制器初始化的时候调用的
  /// 可以做一些初始化的事情
  @override
  void onInit() {
    super.onInit();
    // 这里可以添加一个监听器，监听某个数据的改变
    ever(name, (data) {
      print("data change : ${data ?? ""}");
    });
    // 监听某个数据的改变，只会监听一次
    once(name, (data) {
      print("data change once : ${data ?? ""}");
    });
    // 监听某个数据的改变，在某个时间段内，只会监听一次(延迟)，可以防止重复提交
    debounce(
      name,
      (data) {
        print("data change once : ${data ?? ""}");
      },
      // 间隔时间
      time: Duration(seconds: 3),
    );
  }

  /// 这个方式是在控制器关闭的时候调用的
  @override
  void onClose() {
    super.onClose();
  }


}
