/// 定义一个类
class ClassSample{
  // 属性
  String? name;

  // 属性，前面加下划线表示权限为私有
  int? _age;

  // 静态属性(静态方法同理)
  static String? sex;

  // get set属性，类似于Kotlin，执行代码块；可以把一些方法简写成这种形式
  get pName {
    return name;
  }

  set pAge(int age) {
    _age = age;
  }

  // 默认构造函数
  ClassSample() {
    name = "还没名字";
    _age = 0;
  }

  // 带参数的构造函数
  // Person(this.name, this._age);

  // 命名构造函数
  ClassSample.birth(String name) {
    this.name = name;
    _age = 0;
  }

  // 命名构造函数，在实例化之前，可以加一些初始化的操作
  ClassSample.newBirth(String name) : _age = 0 {
    this.name = name;
  }

  // 方法
  void getInfo() {
    print("$name --- $_age");
  }

  // 私有方法
  void _run() {
    print("这是一个私有方法");
  }


}