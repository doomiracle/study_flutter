import 'package:flutter/material.dart';

/// 列表布局
class ListLayoutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("列表布局示例"),
      ),
      body: GridView1(),
    );
  }
}

/// ListView
/// 类似于 android 中的 ListView
/// 常用属性：
///       scrollDirection 滚动方向，默认是垂直方向
///       itemExtent  每个子控件的高度
///       shrinkWrap  表示是否根据子组件的总长度来设置ListView的长度，默认值为false
///       children  子控件集合，通过这种方式创建的控件没有应用基于Sliver的懒加载模型，实际上通过此方式创建的ListView和使用SingleChildScrollView+Column的方式没有本质的区别
class ListView1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      shrinkWrap: false,
      children: [
        Container(
          padding: EdgeInsets.all(50.0),
          constraints: BoxConstraints(minWidth: double.infinity),
          color: Colors.red,
          child: Text("A"),
        ),
        Container(
          padding: EdgeInsets.all(50.0),
          constraints: BoxConstraints(minWidth: double.infinity),
          color: Colors.yellow,
          child: Text("B"),
        ),
        Container(
          padding: EdgeInsets.all(50.0),
          constraints: BoxConstraints(minWidth: double.infinity),
          color: Colors.blue,
          child: Text("C"),
        ),
        Container(
          padding: EdgeInsets.all(50.0),
          constraints: BoxConstraints(minWidth: double.infinity),
          color: Colors.cyanAccent,
          child: Text("D"),
        ),
        Container(
          padding: EdgeInsets.all(50.0),
          constraints: BoxConstraints(minWidth: double.infinity),
          color: Colors.pink,
          child: Text("E"),
        ),
        Container(
          padding: EdgeInsets.all(50.0),
          constraints: BoxConstraints(minWidth: double.infinity),
          color: Colors.green,
          child: Text("F"),
        ),
        Container(
          padding: EdgeInsets.all(50.0),
          constraints: BoxConstraints(minWidth: double.infinity),
          color: Colors.grey,
          child: Text("G"),
        ),
        Container(
          padding: EdgeInsets.all(50.0),
          constraints: BoxConstraints(minWidth: double.infinity),
          color: Colors.blueAccent,
          child: Text("H"),
        ),
        Container(
          padding: EdgeInsets.all(50.0),
          constraints: BoxConstraints(minWidth: double.infinity),
          color: Colors.green,
          child: Text("I"),
        ),
        Container(
          padding: EdgeInsets.all(50.0),
          constraints: BoxConstraints(minWidth: double.infinity),
          color: Colors.pink,
          child: Text("J"),
        ),
      ],
    );
  }
}

/// ListView
/// 通过ListView.builder去创建，适合数量比较大的时候，懒加载
/// itemCount 列表项的数量，如果为null，则为无限列表。
class ListView2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 100,
      itemExtent: 50.0,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(title: Text("$index"));
      },
    );
  }
}

/// ListView
/// 通过ListView.separated去创建，可以在每个item间增加构造器
/// 比 builder 方式仅仅只是多一个 separatorBuilder参数
/// separatorBuilder  分割线的构造器
class ListView3 extends StatelessWidget {
  Widget divider1 = Divider(
    color: Colors.blue,
  );
  Widget divider2 = Divider(color: Colors.green);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 100,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(title: Text("$index"));
      },
      separatorBuilder: (BuildContext context, int index) {
        return index % 2 == 0 ? divider1 : divider2;
      },
    );
  }
}

/// GridView
/// 可以构建一个二维网格列表
class GridView1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, //横轴三个子widget
            childAspectRatio: 1.0 //宽高比为1时，子widget
            ),
        children: <Widget>[
          Icon(Icons.ac_unit),
          Icon(Icons.airport_shuttle),
          Icon(Icons.all_inclusive),
          Icon(Icons.beach_access),
          Icon(Icons.cake),
          Icon(Icons.free_breakfast)
        ]);
  }
}
