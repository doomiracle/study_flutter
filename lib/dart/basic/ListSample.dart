/// 集合示例
/// Dart没有数组的概念，但是集合分为可改变的集合和不可改变的集合；
class ListSample{

  // ---------------------------- 创建 -------------------------------------

  // 定义一个集合
  var list1 = ["a", "b", "c"];
  List<String> list2 = [];
  List<String> list3 = List.empty(growable: true);


  // ---------------------------- 属性 -------------------------------------

  /// 集合的长度
  int length1(){
    return list1.length;
  }

  // ---------------------------- 方法 -------------------------------------

  /// 取出list中的值
  String get1(){
    return list1[0];
  }

  /// 添加一个元素
  void add1(){
    list2.add("ha");
  }

  /// 添加一个集合
  void addAll1(){
    list1.addAll(list2);
  }

  // ---------------------------- 测试 -------------------------------------

  /// 测试
  void test() {

    var test = get1();
    print(test);

  }

}