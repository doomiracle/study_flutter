/// 基础示例
class BasicSample {
  // ---------------------------- 变量与常量 -------------------------------------

  // 定义一个int类型的变量
  int int1 = 1;

  // 通过var定义变量，会自动推断类型
  var int2 = 2;

  // 定义一个静态常量
  static const PI = 3.1415926;

  // 定义一个常量，这个常量在编译期间才赋值
  final time = DateTime.now();

  // ---------------------------- 基本数据类型 -------------------------------------

  // int类型
  int int3 = 1;

  // double
  double double1 = 2.3;

  // + - * / %
  int int4 = 1 + 2;

  /// 自加自减
  void intAddSub() {
    int3++;
    int3 = int3 + 1;
    int3--;
  }

  // 定义一个字符串
  String string1 = 'this is string';

  // 定义一个字符串，允许为空，默认null
  String? string2;

  // 三引号会保留空格和回车符
  String string3 = """
  窗前明月光
  疑是地上霜
  """;

  /// 字符串的拼接
  void stringAdd() {
    String string4 = string1 + string3;
    String string5 = "$string1 $string3";
  }

  /// 判断字符串是否为空
  bool isEmpty1() {
    return string1.isEmpty;
  }

  // 定义一个bool类型
  bool bool1 = true;

  // -------------------------------- 测试 --------------------------------------

  /// 测试
  void test() {

    var test = isEmpty1();
    print(test);

  }


}
